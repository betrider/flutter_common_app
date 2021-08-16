import 'package:flutter_common_app/index.dart';

enum Status { Uninitialized, Authenticated, Authenticating, Unauthenticated }

class LoginProvider2 extends GetxController {
  FirebaseAuth _auth;
  User? _user;
  GoogleSignIn _googleSignIn;
  Status _status = Status.Uninitialized;

  LoginProvider2()
      : _auth = FirebaseAuth.instance,
        _googleSignIn = GoogleSignIn() {
    _auth.authStateChanges().listen(_onAuthStateChanged);
  }

  Status get status => _status;
  User get user => _user!;

  Future<bool> signIn(String email, String password) async {
    try {
      _status = Status.Authenticating;
      update();
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      _status = Status.Unauthenticated;
      update();
      return false;
    }
  }

  Future<bool> signInWithGoogle() async {
    try {
      _status = Status.Authenticating;
      update();
      final GoogleSignInAccount googleUser = (await _googleSignIn.signIn())!;
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _auth.signInWithCredential(credential);
      return true;
    } catch (e) {
      print(e);
      _status = Status.Unauthenticated;
      update();
      return false;
    }
  }

  Future signOut() async {
    _auth.signOut();
    _googleSignIn.signOut();
    _status = Status.Unauthenticated;
    update();
    return Future.delayed(Duration.zero);
  }

  Future<void> _onAuthStateChanged(User? firebaseUser) async {
    if (_status == Status.Uninitialized) return null;

    if (firebaseUser == null) {
      _status = Status.Unauthenticated;
    } else {
      _user = firebaseUser;
      _status = Status.Authenticated;
    }
    update();
  }

  void changeUnauthenticatedStatus() {
    _status = Status.Unauthenticated;
    update();
  }

  void loginPass() {
    _status = Status.Authenticated;
    update();
  }
}