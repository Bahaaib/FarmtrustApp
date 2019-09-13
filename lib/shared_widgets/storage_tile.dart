import 'package:flutter/material.dart';

class StorageTile extends StatelessWidget {
  final Color _primaryColor = Color(0xff00c853);
  double _width;
  String _title;
  String _lineText;

  StorageTile(double width, String title, String lineText) {
    this._width = width;
    this._title = title;
    this._lineText = lineText;
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
            margin: EdgeInsets.only(left: 15.0, bottom: 10.0),
            alignment: Alignment.topLeft,
            child: Text(
              _lineText,
              style: TextStyle(color: Colors.grey[700], fontSize: 16.0),
            )),
        Container(
          margin: EdgeInsets.only(top: 10.0,left: 15.0, right: 15.0, bottom: 15.0),
          decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 20.0, spreadRadius: -5.0)
              ]),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15.0, left: 20.0, bottom: 5.0),
                    child: Text(
                      'Activities',
                      style: TextStyle(
                          color: _primaryColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: 15.0, right: 55.0, bottom: 5.0),
                    child: Text(
                      'Value',
                      style: TextStyle(
                          color: _primaryColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5.0, left: 20.0, bottom: 5.0),
                    child: Text(
                      'Sorting',
                    ),
                  ),
                  Container(
                      margin:
                          EdgeInsets.only(top: 5.0, right: 60.0, bottom: 5.0),
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      )),
                ],
              ),
              Container(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5.0, left: 20.0, bottom: 5.0),
                    child: Text(
                      'Grading',
                    ),
                  ),
                  Container(
                      margin:
                          EdgeInsets.only(top: 5.0, right: 60.0, bottom: 5.0),
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      )),
                ],
              ),
              Container(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5.0, left: 20.0, bottom: 5.0),
                    child: Text(
                      'Fumigation',
                    ),
                  ),
                  Container(
                      margin:
                          EdgeInsets.only(top: 5.0, right: 60.0, bottom: 5.0),
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      )),
                ],
              ),
              Container(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5.0, left: 20.0, bottom: 5.0),
                    child: Text(
                      'Packaging',
                    ),
                  ),
                  Container(
                      margin:
                          EdgeInsets.only(top: 5.0, right: 60.0, bottom: 5.0),
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      )),
                ],
              ),
              Container(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5.0, left: 20.0, bottom: 15.0),
                    child: Text(
                      'Dispatch Date',
                    ),
                  ),
                  Container(
                      margin:
                          EdgeInsets.only(top: 5.0, right: 20.0, bottom: 15.0),
                      child: Text('28th August 2019'))
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
