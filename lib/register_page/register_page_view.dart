import 'package:flutter/material.dart';
import 'package:farmtrust_app/register_page/register_page_viewmodel.dart';

class RegisterPageView extends LoginPageViewModel {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Center(
          child: Container(
            width: 300.0,
            margin: EdgeInsets.only(top: 160.0),
            child: TextField(
              controller: _nameController,
              maxLength: 64,
              maxLines: 1,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_pin,
                    color: Colors.green[400],
                  ),
                  fillColor: Colors.green[400],
                  hintText: 'Username'),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 300.0,
            margin: EdgeInsets.only(top: 20.0),
            child: TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              maxLines: 1,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail_outline,
                    color: Colors.green[400],
                  ),
                  fillColor: Colors.green[400],
                  hintText: 'Email Address'),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 300.0,
            margin: EdgeInsets.only(top: 40.0),
            child: TextField(
              controller: _mobileController,
              keyboardType: TextInputType.emailAddress,
              maxLines: 1,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.phone_android,
                    color: Colors.green[400],
                  ),
                  fillColor: Colors.green[400],
                  hintText: 'Enter Mobile number'),
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
            onPressed: () {},
            color: Colors.green[400],
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
                child: Image.asset('assets/ic_facebook.png'),
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 6.0)],
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                child: Image.asset('assets/ic_twitter.png'),
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 6.0)],
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                child: Image.asset('assets/ic_google.png'),
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 6.0)],
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
        )),
        Center(
          child: Container(
            width: 220.0,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Text(
                    'Already have account?',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0, left: 8.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.green[400],
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
}
