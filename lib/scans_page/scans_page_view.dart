import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:farmtrust_app/scans_page/scans_page_viewmodel.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ScansPageView extends ScansPageViewModel {
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
                child: Text('Scan Logs'),
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

          return Stack(
            children: <Widget>[
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int position) =>
                      buildListItems(context, position)),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: _width,
                    height: 80.0,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 2.0, spreadRadius: -2.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Material(
                                type: MaterialType.transparency,
                                shape: CircleBorder(),
                                clipBehavior: Clip.antiAlias,
                                child: IconButton(
                                    icon: Icon(
                                      Icons.edit,
                                      color: _primaryColor,
                                    ),
                                    onPressed: () {}),
                              ),
                              Text(
                                'Edit Products',
                                style: TextStyle(fontSize: 15.0),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0.0, left: 150.0),
                          child: Column(
                            children: <Widget>[
                              Material(
                                type: MaterialType.transparency,
                                shape: CircleBorder(),
                                clipBehavior: Clip.antiAlias,
                                child: IconButton(
                                    icon: Icon(
                                      Icons.location_on,
                                      color: _primaryColor,
                                    ),
                                    onPressed: () {}),
                              ),
                              Text(
                                'Near Me',
                                style: TextStyle(fontSize: 15.0),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          );
        }));
  }

  Widget buildListItems(BuildContext context, int position) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 15.0, bottom: 10.0),
        width: 380.0,
        height: 90.0,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey[400], blurRadius: 20.0, spreadRadius: 5.0),
        ], color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 12.0),
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                  color: Colors.grey[300], shape: BoxShape.circle),
              child: Image.asset(
                'assets/ic_avatar.png',
                color: Colors.grey[400],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Text(
                    'Keria S.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0, left: 20.0),
                  child: Text(
                    'Really Great Experience',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20.0, right: 20.0),
                  child: SmoothStarRating(
                    starCount: 5,
                    borderColor: Colors.orange,
                    color: Colors.orange,
                    size: 20.0,
                    rating: 4,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0, right: 20.0),
                  child: Text(
                    '2 days ago',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
