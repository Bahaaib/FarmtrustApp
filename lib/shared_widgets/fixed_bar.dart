import 'package:flutter/material.dart';

class FixedAppBar extends StatelessWidget {
  String _title;
  bool _isVisible;

  FixedAppBar({String title, bool isVisible}) {
    this._title = title;
    this._isVisible = isVisible;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Text(
            _title,
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    ));
  }
}
