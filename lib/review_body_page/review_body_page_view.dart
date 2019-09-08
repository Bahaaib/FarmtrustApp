import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:farmtrust_app/shared_widgets/separator.dart';
import 'package:farmtrust_app/review_body_page/review_body_viewmodel.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

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
        body: OrientationBuilder(builder: (context, orientation) {
          double _width = MediaQuery.of(context).size.width;

          return ListView(
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 30.0),
                  width: _width > 400 ? 350.0 : 310.0,
                  height: _width > 400 ? 400.0 : 360.0,
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
                        width: _width > 400 ? 300.0 : 260,
                        height: _width > 400 ? 300.0 : 260,
                        margin: EdgeInsets.only(top: 20.0),
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: _primaryColor,
                              hintText: 'Write Review here...'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Separator(color: Colors.grey[300]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 20.0, right: 20.0),
                            child: SmoothStarRating(
                              starCount: 5,
                              borderColor: Colors.orange,
                              color: Colors.orange,
                              size: 30.0,
                              rating: 4,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0, right: 40.0),
                            child: Text(
                              'Rate it',
                              style: TextStyle(
                                  color: _primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.info_outline,
                          color: Colors.orange,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Most helpful reviews have 100 words or more',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        )
                      ],
                    )),
              ),
              Center(
                  child: Container(
                child: RaisedButton(
                  textColor: Colors.white,
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  onPressed: () {},
                  color: _primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                width: _width > 400 ? 350.0 : 310,
                height: 60.0,
                margin: EdgeInsets.only(top: 15.0, bottom: 20.0),
              )),
            ],
          );
        }));
  }
}
