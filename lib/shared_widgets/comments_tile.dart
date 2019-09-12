import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class CommentsTile extends StatelessWidget {
  double _width;
  String _title;

  CommentsTile(double width, String title) {
    this._width = width;
    this._title = title;
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        _title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      children: <Widget>[
        Container(
          height: 200.0,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int position) =>
                  buildListItems(context, position, _width)),
        )
      ],
    );
  }

  Widget buildListItems(BuildContext context, int position, double width) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: width > 400 ? 15.0 : 10.0, bottom: 10.0),
        width: width > 400 ? 380.0 : 340.0,
        height: 90.0,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey[400], blurRadius: 20.0, spreadRadius: -5.0),
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
                  margin: EdgeInsets.only(
                      top: 20.0, left: width > 400 ? 20.0 : 15.0),
                  child: Text(
                    'Keria S.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 15.0, left: width > 400 ? 20.0 : 15.0),
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
                  margin: EdgeInsets.only(
                      top: width > 400 ? 20.0 : 25.0,
                      right: width > 400 ? 20.0 : 12.0),
                  child: SmoothStarRating(
                    starCount: 5,
                    borderColor: Colors.orange,
                    color: Colors.orange,
                    size: width > 400 ? 20.0 : 18.0,
                    rating: 4,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 10.0, right: width > 400 ? 20.0 : 12.0),
                  child: Text(
                    '2 days ago',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: width > 400 ? 14.0 : 12.0),
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
