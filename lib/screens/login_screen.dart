import 'package:flutter_common_app/index.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController? _email;
  TextEditingController? _password;
  final _key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _email = TextEditingController(text: "");
    _password = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Email'),
              controller: _email,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Password'),
              controller: _password,
            ),
            ElevatedButton(
              onPressed: () async {
                // if (!await context.read<LoginProvider>().signInWithGoogle()) {
                //   showSnackBar(content: 'Unable to login.');
                // }
                if (!await Get.find<LoginProvider>().signInWithGoogle()) {
                  Get.snackbar('','Unable to login.');
                }
              },
              child: Text('Login'),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _email!.dispose();
    _password!.dispose();
    super.dispose();
  }
}
