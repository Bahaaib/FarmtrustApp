import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:farmtrust_app/review_body_page/review_body_viewmodel.dart';

class ReviewBodyPageView extends ReviewBodyPageViewModel {
  final Color _primaryColor = Color(0xff00c853);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: _primaryColor));

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: _primaryColor,
            title: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30.0),
              child: Text('Write Review'),
            ),
            leading: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 20.0),
              child: IconButton(
                  icon: Icon(Icons.keyboard_backspace, color: Colors.white),
                  onPressed: () {}),
            ),
            actions: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 20.0),
                child: IconButton(
                    icon: Icon(Icons.menu, color: Colors.white),
                    onPressed: () {}),
              ),
            ],
          )),
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 40.0),
              width: 350.0,
              height: 400.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[400],
                        blurRadius: 50.0,
                        spreadRadius: 5.0),
                  ]),
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    width: 300.0,
                    height: 300.0,
                    margin: EdgeInsets.only(top: 20.0),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Color(0xff00c853),
                          hintText: 'Write Review here...'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
