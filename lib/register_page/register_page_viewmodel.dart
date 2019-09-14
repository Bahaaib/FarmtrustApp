import 'package:flutter/material.dart';
import 'package:farmtrust_app/register_page/register_page.dart';
import 'package:farmtrust_app/home_page/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class RegisterPageViewModel extends State<RegisterPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final facebookLogin = FacebookLogin();
  GoogleSignInAccount googleAccount;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  bool isLoading = false;

  RegisterPageViewModel() {
    _auth.onAuthStateChanged.listen((user) {
      print('we got a user: ${user.uid}');
    });
  }

  Future<void> _signUpMailAndPass(String mail, String pass) async {
    try {
      setState(() {
        isLoading = true;
      });
      await _auth.createUserWithEmailAndPassword(email: mail, password: pass);
      setState(() {
        isLoading = false;
      });
      _goHome();
    } on PlatformException catch (e) {
      setState(() {
        isLoading = false;
      });
      print('got: ${e.message}');
      showMessageDialog('error', e.message);
    }
  }

  Future<void> signInWithGoogle() async {
    googleAccount = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleAccount.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final FirebaseUser user = await _auth.signInWithCredential(credential);
    assert(user.email != null);
    assert(user.displayName != null);
    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final FirebaseUser currentUser = await _auth.currentUser();
    assert(user.uid == currentUser.uid);

    print('signInWithGoogle succeeded: $user');
    _goHome();
  }

  Future<void> _signUpWithFacebook() async {
    final result = await facebookLogin.logInWithReadPermissions(['email']);
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        print('token: ${result.accessToken.token}');
        _goHome();
        break;
      case FacebookLoginStatus.cancelledByUser:
        print('cancelled');
        break;
      case FacebookLoginStatus.error:
        print('error: ${result.errorMessage}');
        showMessageDialog('error', result.errorMessage);

        break;
    }
  }

  void showMessageDialog(String title, String message);

  void signUp() {
    _signUpMailAndPass(emailController.text, passwordController.text);
  }

  void signUpFB() {
    _signUpWithFacebook();
  }

  void _goHome() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
