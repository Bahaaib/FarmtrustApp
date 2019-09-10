import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class CollapsingAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/beans.jpg'), fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Green Gram - Nylon N26',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 40.0),
                        child: Text(
                          '\$250',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40.0, left: 20.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 20),
                        child: SmoothStarRating(
                          starCount: 5,
                          borderColor: Colors.orange,
                          color: Colors.orange,
                          size: 20.0,
                          rating: 4,
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(top: 20.0, right: 20.0),
                            child: Text(
                              'View All',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0, left: 100.0),
                        child: Text(
                          '250 Calories',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 15.0, left: 15.0),
                        child: Text(
                          'Details',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                      ),
                      Spacer(
                        flex: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15.0, right: 15.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.fiber_manual_record,
                              color: Colors.orange[300],
                              size: 12.0,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Fresh Made',
                                style: TextStyle(color: Colors.orange[300]),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0, left: 15.0),
                    padding: EdgeInsets.only(right: 15.0),
                    child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley'),
                  )
                ],
              ),
              margin: EdgeInsets.only(bottom: 20.0),
              width: 380.0,
              height: 120.0,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 15.0, spreadRadius: 3.0)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0)),
            ),
          )
        ],
      ),
    );
  }
}
