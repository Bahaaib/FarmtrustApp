import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FarmerDetailsTile extends StatelessWidget {
  double _width;

  FarmerDetailsTile(double width) {
    this._width = width;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 12.0),
          width: 60.0,
          height: 60.0,
          decoration:
              BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
          child: Image.asset(
            'assets/ic_avatar.png',
            color: Colors.grey[400],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin:
                  EdgeInsets.only(top: 10.0, left: _width > 400 ? 20.0 : 15.0),
              child: Text(
                'Lucy M.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: 5.0, left: _width > 400 ? 20.0 : 15.0),
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
    );
  }
}
