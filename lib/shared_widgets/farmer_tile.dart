import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FarmerDetailsTile extends StatelessWidget {
  final Color _primaryColor = Color(0xff00c853);
  double _width;

  FarmerDetailsTile(double width) {
    this._width = width;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[Row(
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
              margin: EdgeInsets.only(
                  top: 10.0, left: _width > 400 ? 20.0 : 15.0),
              child: Text(
                'Lucy M.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 5.0, left: _width > 400 ? 20.0 : 15.0),
              child: SmoothStarRating(
                starCount: 5,
                borderColor: Colors.orange,
                color: Colors.orange,
                size: _width > 400 ? 20.0 : 18.0,
                rating: 4,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 8.0, left: 20.0),
                child: Row(children: <Widget>[
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
                ]))
          ],
        ),
      ],
    ),
      Container(
          margin: EdgeInsets.only(
              top: 15.0, left: 20.0, right: 20.0, bottom: 15.0),
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
                      'Land Size',
                      style: TextStyle(
                          color: _primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8.0),
                    child: Text(
                      '1.3 Acres',
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
                      'Farming Method',
                      style: TextStyle(
                          color: _primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Conservation Agriculture',
                    ),
                  ),
                ],
              )
            ],
          )),
      Center(
          child: Container(
            child: RaisedButton(
              textColor: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                      icon: Image.asset(
                        'assets/ic_tip.png',
                        color: Colors.white,
                      ),
                      color: Colors.white,
                      onPressed: () {}),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                  ),
                  Text(
                    'Tip Farmer',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              onPressed: () {},
              color: Color(0xff00c853),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
            ),
            width: 200.0,
            height: 50.0,
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
          )),],);
  }
}
