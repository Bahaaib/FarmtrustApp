import 'package:flutter/material.dart';

class FixedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        //Text('Green Gram - Nylon N26', style: TextStyle(color: Colors.orange),),
      ],
    ));
  }
}
