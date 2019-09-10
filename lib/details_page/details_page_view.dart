import 'package:flutter/material.dart';
import 'package:farmtrust_app/details_page/details_page_viewmodel.dart';

class DetailsPageView extends DetailsPageViewModel {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      final double _width = MediaQuery.of(context).size.width;

      return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: FixedAppBar(),
            )
          ],
        ),
      );
    });
  }
}

class FixedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
            Center(
                child: Container(
              margin: EdgeInsets.only(left: 16.0),
              child: Text('Green Gram - Nylon N26'),
            ))
          ],
        ));
  }
}
