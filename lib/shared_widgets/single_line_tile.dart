import 'package:flutter/material.dart';

class SingleLineTile extends StatelessWidget {
  double _width;
  String _title;
  String _lineText;

  SingleLineTile(double width, String title, String lineText) {
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
        Container(margin: EdgeInsets.only(left: 15.0, bottom: 10.0),
            alignment: Alignment.topLeft,
            child: Text(
              _lineText,
              style: TextStyle(color: Colors.grey[700], fontSize: 16.0),
            ))
      ],
    );
  }
}
