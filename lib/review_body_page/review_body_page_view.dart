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
    );
  }
}
