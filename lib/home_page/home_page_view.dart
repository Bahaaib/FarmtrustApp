import 'package:flutter/material.dart';
import 'package:farmtrust_app/home_page/home_page_viewmodel.dart';
import 'package:farmtrust_app/shared_widgets/arc_button.dart';

class HomePageView extends HomePageViewModel {
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
                /* Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 155.0),
                    width: 150,
                    height: 150,
                    child: Center(
                      child: Container(
                        width: 85,
                        height: 85,
                        child: Image.asset('assets/qrcode.png'),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 155.0),
                    width: 150,
                    height: 150,
                    child: Center(
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image.asset('assets/qrcode.png')),
                    ),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(color: Colors.grey, offset: Offset(0.0, 0.0)),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          spreadRadius: -8.0,
                          blurRadius: 8.0)
                    ], color: Colors.transparent, shape: BoxShape.circle),
                  ),
                ),*/
                Container(
                  alignment: Alignment.topRight,
                  child: ArcButton(270, 60),
                  margin: EdgeInsets.only(
                      top: 260.0, right: width < 400.0 ? 75.0 : 96.0),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: ArcButton(330, 60),
                  margin: EdgeInsets.only(
                      top: 257.0, right: width < 400.0 ? 75.0 : 97.5),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: ArcButton(30, 60),
                  margin: EdgeInsets.only(
                      top: 256.0, right: width < 400.0 ? 75.0 : 97.5),
                ),
                Container(
                  child: ArcButton(210, 60),
                  margin: EdgeInsets.only(
                      top: 260.0, left: width < 400.0 ? 75.0 : 96.0),
                ),
                Container(
                  child: ArcButton(150, 60),
                  margin: EdgeInsets.only(
                      top: 257.0, left: width < 400.0 ? 75.0 : 97.5),
                ),
                Container(
                  child: ArcButton(90, 60),
                  margin: EdgeInsets.only(
                      top: 256.0, left: width < 400.0 ? 75.0 : 96.5),
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
