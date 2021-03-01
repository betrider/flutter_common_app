import 'package:flutter_common_app/utilities/index.dart';

enum Status {
  Uninitialized,
  Authenticated,
  Authenticating,
  Unauthenticated,
  Registering
}

class AuthProvider extends ChangeNotifier {
  //Firebase Auth object
  FirebaseAuth _auth;

  //google
  GoogleSignIn _googleSignIn;

  //계정정보
  User _user;

  //Default status
  Status _status = Status.Uninitialized;

  Status get status => _status;

  AuthProvider() {
    //initialise object
    _auth = FirebaseAuth.instance;
    _googleSignIn = GoogleSignIn();
  }

  //Create user object based on the given FirebaseUser
  UserModel _userFromFirebase(User user) {
    if (user == null) {
      return null;
    }

    return UserModel(
        uid: user.uid,
        email: user.email,
        displayName: user.displayName,
        phoneNumber: user.phoneNumber,
        photoUrl: user.photoURL);
  }

  //Method to handle user sign in using google
  Future<bool> signInWithGoogle(String email, String password) async {
    try {
      GoogleSignInAccount account = await _googleSignIn.signIn();
      final GoogleSignInAuthentication authentication =
          await account.authentication;

      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
          idToken: authentication.idToken,
          accessToken: authentication.accessToken);

      final UserCredential authResult =
          await _auth.signInWithCredential(credential);

      _user = authResult.user;

      _status = Status.Authenticating;
      notifyListeners();
      return true;
    } catch (e) {
      print("Error on the sign in = " + e.toString());
      _status = Status.Unauthenticated;
      notifyListeners();
      return false;
    }
  }

  //Method to detect live auth changes such as user sign in and sign out
  Future<void> onAuthStateChanged(User user) async {
    if (user == null) {
      _status = Status.Unauthenticated;
    } else {
      _userFromFirebase(user);
      _status = Status.Authenticated;
    }
    notifyListeners();
  }

  //Method to handle user signing out
  Future signOut() async {
    _auth.signOut();
    _googleSignIn.disconnect();
    _googleSignIn.signOut();
    _status = Status.Unauthenticated;
    notifyListeners();
    return Future.delayed(Duration.zero);
  }
}
