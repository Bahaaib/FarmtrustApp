import 'package:flutter/material.dart';
import 'package:farmtrust_app/register_page/register_page.dart';
import 'package:farmtrust_app/home_page/home_page.dart';
import 'package:farmtrust_app/reviews_page/reviews_page.dart';
import 'package:farmtrust_app/review_body_page/review_body_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Widget _home = ReviewsPage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmtrust',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: _home,
      routes: <String, WidgetBuilder>{
        '/register': (BuildContext context) => RegisterPage(),
        '/home': (BuildContext context) => HomePage(),
        '/reviews': (BuildContext context) => ReviewsPage(),
        '/review_body': (BuildContext context) => ReviewBodyPage()
      },
    );
  }
}
