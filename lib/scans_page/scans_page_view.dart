import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:farmtrust_app/scans_page/scans_page_viewmodel.dart';
import 'package:farmtrust_app/details_page/details_page.dart';

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

          return Stack(children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                bottom: _width > 400 ? 80.0 : 70.0,
              ),
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int position) =>
                      buildListItems(context, position, _width)),
            ),
            Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                      color: Colors.transparent,
                      width: _width,
                      height: _width > 400 ? 120.0 : 100.0,
                      child: Stack(
                        children: <Widget>[
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                color: Colors.grey[300],
                                child: Container(
                                  width: _width,
                                  height: _width > 400 ? 80.0 : 70.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15.0),
                                        topLeft: Radius.circular(15.0)),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 2.0, spreadRadius: -2.0)
                                    ],
                                    color: Colors.white,
                                  ),
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
                                        margin: EdgeInsets.only(
                                            top: 0.0, left: 150.0),
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
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              alignment: Alignment.center,
                              width: _width > 400 ? 80.0 : 65.0,
                              height: _width > 400 ? 80.0 : 65.0,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: _primaryColor,
                                    blurRadius: _width > 400 ? 15.0 : 10.0,
                                    spreadRadius: 0.0)
                              ], shape: BoxShape.circle, color: Colors.white),
                              child: Container(
                                width: _width > 400 ? 70.0 : 55.0,
                                height: _width > 400 ? 70.0 : 55.0,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.green, blurRadius: 0.0),
                                      BoxShadow(
                                          color: Colors.green,
                                          offset: Offset(0.0, 0.0)),
                                      BoxShadow(
                                          color: _primaryColor,
                                          offset: Offset(0.0, 0.0),
                                          spreadRadius: 0.0,
                                          blurRadius: 0.0)
                                    ],
                                    shape: BoxShape.circle,
                                    color: Colors.transparent),
                                child: Material(
                                  type: MaterialType.transparency,
                                  shape: CircleBorder(),
                                  clipBehavior: Clip.antiAlias,
                                  child: IconButton(
                                      splashColor: Colors.grey,
                                      icon: Image.asset(
                                        'assets/ic_qrcode.png',
                                        color: Colors.white,
                                      ),
                                      onPressed: performScan),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ])
          ]);
        }));
  }

  Widget buildListItems(BuildContext context, int position, double width) {
    return Center(
        child: Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 15.0),
      width: width > 400 ? 380.0 : 340,
      height: 240.0,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey[400], blurRadius: 20.0, spreadRadius: 5.0),
      ], color: Colors.transparent, borderRadius: BorderRadius.circular(15.0)),
      child: Stack(children: <Widget>[
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: width > 400 ? 380.0 : 340,
            height: 220.0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 90.0, left: 20.0),
                  child: Text(
                    'Green Gram - Nylon N26',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Selling Price',
                                style: TextStyle(
                                    color: _primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              child: Text(
                                'KSH 160/KG',
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 30.0,
                          child: VerticalDivider(
                            color: Colors.grey[400],
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Farmer Income',
                                style: TextStyle(
                                    color: _primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              child: Text(
                                'KSH 75/KG',
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 30.0,
                          child: VerticalDivider(
                            color: Colors.grey[400],
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Harvested On',
                                style: TextStyle(
                                    color: _primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              child: Text(
                                '12-06-2018',
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 10.0, left: 20.0),
                      child: Text(
                        'Origin',
                        style: TextStyle(
                            color: _primaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 8.0, left: 20.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Image.asset('assets/ic_kenya.png'),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Text(
                                'KITUI East - Kenya',
                                style: TextStyle(fontSize: 14.0),
                              ),
                            )
                          ],
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: width > 400 ? 340.0 : 300,
            height: 100.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/beans.jpg'), fit: BoxFit.fill),
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15.0)),
          ),
        )
      ]),
    ));
  }

  @override
  void showScanResultDialog(String title, String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              title,
              style: TextStyle(color: _primaryColor),
            ),
            content: Text(message),
            actions: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                    child: OutlineButton(
                        splashColor: Colors.green,
                        borderSide: BorderSide(color: _primaryColor),
                        child: Text(
                          'Product Details',
                          style: TextStyle(color: _primaryColor),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
              )
            ],
          );
        });
  }
}
