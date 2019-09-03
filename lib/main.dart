import 'package:flutter/material.dart';
import 'package:farmtrust_app/register_page/register_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Widget _home = RegisterPage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmtrust',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: _home,
      routes: <String, WidgetBuilder>{
        '/register': (BuildContext context) => RegisterPage()
      },
    );
  }
}
