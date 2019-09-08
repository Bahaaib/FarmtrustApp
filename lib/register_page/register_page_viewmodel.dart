import 'package:flutter/material.dart';
import 'package:farmtrust_app/register_page/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

abstract class RegisterPageViewModel extends State<RegisterPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final facebookLogin = FacebookLogin();

  RegisterPageViewModel() {
    _auth.onAuthStateChanged.listen((user) {
      print('we got a user: ${user.uid}');
    });
  }

  Future<void> _signUpMailAndPass(String mail, String pass) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: mail, password: pass);
    } on PlatformException catch (e) {
      print('got: ${e.message}');
      showMessageDialog('error', e.message);
    }
  }

  Future<void> _signUpWithFacebook() async {
    final result = await facebookLogin.logInWithReadPermissions(['email']);
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        print('token: ${result.accessToken.token}');
        break;
      case FacebookLoginStatus.cancelledByUser:
        print('cancelled');
        break;
      case FacebookLoginStatus.error:
        print('error: ${result.errorMessage}');
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
}
