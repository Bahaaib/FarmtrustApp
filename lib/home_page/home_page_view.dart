import 'package:flutter/material.dart';
import 'package:farmtrust_app/home_page/home_page_viewmodel.dart';
import 'package:farmtrust_app/shared_widgets/arc_button.dart';
import 'package:farmtrust_app/scans_page/scans_page.dart';

class HomePageView extends HomePageViewModel {
  final Color _primaryColor = Color(0xff00c853);
  final Color _lightBlackColor = Color(0xff424242);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: OrientationBuilder(builder: (context, orientation) {
            double width = MediaQuery.of(context).size.width;
            print('Width $width');

            return Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.topRight,
                  child: ArcButton(270, 60, _primaryColor),
                  margin: EdgeInsets.only(
                      top: 260.0, right: width < 400.0 ? 75.0 : 96.0),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: ArcButton(330, 60, _lightBlackColor),
                  margin: EdgeInsets.only(
                      top: 257.0, right: width < 400.0 ? 76.5 : 97.5),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: ArcButton(30, 60, _primaryColor),
                  margin: EdgeInsets.only(
                      top: 256.0, right: width < 400.0 ? 76.0 : 97.5),
                ),
                Container(
                  child: ArcButton(210, 60, _lightBlackColor),
                  margin: EdgeInsets.only(
                      top: 260.0, left: width < 400.0 ? 75.0 : 96.0),
                ),
                Container(
                  child: ArcButton(150, 60, _primaryColor),
                  margin: EdgeInsets.only(
                      top: 257.0, left: width < 400.0 ? 76.5 : 97.5),
                ),
                Container(
                  child: ArcButton(90, 60, _lightBlackColor),
                  margin: EdgeInsets.only(
                      top: 256.0, left: width < 400.0 ? 76.0 : 96.5),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 285.0),
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(color: Colors.green[700], blurRadius: 10.0),
                    ], color: Colors.white, shape: BoxShape.circle),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 300.0),
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(color: Colors.green[700], blurRadius: 5.0),
                      BoxShadow(
                          color: Colors.green[700], offset: Offset(0.0, 0.0)),
                      BoxShadow(
                          color: _primaryColor,
                          offset: Offset(0.0, 0.0),
                          spreadRadius: -6.0,
                          blurRadius: 8.0)
                    ], color: Colors.transparent, shape: BoxShape.circle),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 310.0),
                    width: 110,
                    height: 110,
                    child: Material(
                        type: MaterialType.transparency,
                        shape: CircleBorder(),
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScansPage()));
                          },
                          borderRadius: BorderRadius.circular(20.0),
                          splashColor: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 0.0),
                                width: 50,
                                height: 50,
                                child: Image.asset('assets/ic_qrcode.png'),
                              ),
                              Container(
                                child: Text(
                                  'SCAN',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        )),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 220.0, left: width > 400 ? 120.0 : 100.0),
                  child: Column(
                    children: <Widget>[
                      Material(
                          type: MaterialType.transparency,
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          child: IconButton(
                              icon: Image.asset(
                                'assets/ic_scan.png',
                                color: Colors.white,
                              ),
                              onPressed: () {})),
                      Text(
                        'Scans',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 320.0, left: width > 400 ? 50.0 : 30.0),
                  child: Column(
                    children: <Widget>[
                      Material(
                          type: MaterialType.transparency,
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          child: IconButton(
                              icon: Image.asset(
                                'assets/ic_account.png',
                                color: Colors.white,
                              ),
                              onPressed: () {})),
                      Text(
                        'Account',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 430.0, left: width > 400 ? 100.0 : 80.0),
                  child: Column(
                    children: <Widget>[
                      Material(
                          type: MaterialType.transparency,
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          child: IconButton(
                              icon: Image.asset(
                                'assets/ic_supermarket.png',
                                color: Colors.white,
                              ),
                              onPressed: () {})),
                      Text(
                        'Supermarkets',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                      top: 220.0, right: width > 400 ? 120.0 : 100.0),
                  child: Column(
                    children: <Widget>[
                      Material(
                          type: MaterialType.transparency,
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          child: IconButton(
                              icon: Image.asset(
                                'assets/ic_recall.png',
                                color: Colors.white,
                              ),
                              onPressed: () {})),
                      Text(
                        'Recalls',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                      top: 320.0, right: width > 400 ? 50.0 : 30.0),
                  child: Column(
                    children: <Widget>[
                      Material(
                        type: MaterialType.transparency,
                        shape: CircleBorder(),
                        clipBehavior: Clip.antiAlias,
                        child: IconButton(
                            icon: Image.asset(
                              'assets/ic_rate.png',
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                      Text(
                        'Rate us',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                      top: 430.0, right: width > 400 ? 120.0 : 100.0),
                  child: Column(
                    children: <Widget>[
                      Material(
                          type: MaterialType.transparency,
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          child: IconButton(
                              icon: Image.asset(
                                'assets/ic_about.png',
                                color: Colors.white,
                              ),
                              onPressed: () {})),
                      Text(
                        'About us',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      )
                    ],
                  ),
                ),
              ],
            );
          })
          //),
          ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
