import 'package:flutter/material.dart';
import 'package:farmtrust_app/register_page/register_page_viewmodel.dart';

class RegisterPageView extends RegisterPageViewModel {
  bool passwordVisible = false;

  @override
  void initState() {
    passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Center(
          child: Container(
            width: 300.0,
            margin: EdgeInsets.only(top: 140.0),
            child: TextField(
              controller: nameController,
              maxLength: 64,
              maxLines: 1,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_pin,
                    color: Color(0xff00c853),
                  ),
                  fillColor: Color(0xff00c853),
                  hintText: 'Username'),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 300.0,
            margin: EdgeInsets.only(top: 20.0),
            child: TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              maxLines: 1,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail_outline,
                    color: Color(0xff00c853),
                  ),
                  fillColor: Color(0xff00c853),
                  hintText: 'Email Address'),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 300.0,
            margin: EdgeInsets.only(top: 40.0),
            child: TextField(
              controller: passwordController,
              keyboardType: TextInputType.text,
              obscureText: !passwordVisible,
              maxLines: 1,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Color(0xff00c853),
                  ),
                  suffixIcon: IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      }),
                  fillColor: Color(0xff00c853),
                  hintText: 'Enter Password'),
            ),
          ),
        ),
        Center(
            child: Container(
          child: RaisedButton(
            textColor: Colors.white,
            child: Text(
              'SIGN UP',
              style: TextStyle(fontSize: 16.0),
            ),
            onPressed: signUp,
            color: Color(0xff00c853),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
          ),
          width: 280.0,
          height: 60.0,
          margin: EdgeInsets.only(top: 40.0),
        )),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Text(
              'Signup with Social media account',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        Center(
            child: Container(
          margin: EdgeInsets.only(top: 20.0),
          width: 200.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Material(
                  clipBehavior: Clip.antiAlias,
                  shape: CircleBorder(),
                  color: Colors.transparent,
                  child: Ink.image(
                    image: AssetImage('assets/ic_facebook.png'),
                    child: InkWell(
                      onTap: signUpFB,
                    ),
                  ),
                ),
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 6.0)],
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                child: Material(
                  clipBehavior: Clip.antiAlias,
                  shape: CircleBorder(),
                  color: Colors.transparent,
                  child: Ink.image(
                    image: AssetImage('assets/ic_twitter.png'),
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 6.0)],
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                child: Material(
                  clipBehavior: Clip.antiAlias,
                  shape: CircleBorder(),
                  color: Colors.transparent,
                  child: Ink.image(
                    image: AssetImage('assets/ic_google.png'),
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 6.0)],
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        )),
        Center(
          child: Container(
            width: 220.0,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
                  child: Text(
                    'Already have account?',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0, left: 8.0, bottom: 20.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xff00c853),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }

  @override
  void showMessageDialog(String title, String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: <Widget>[
              InkWell(
                child: Text('ok'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
