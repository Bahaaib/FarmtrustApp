import 'package:flutter/material.dart';
import 'package:farmtrust_app/details_page/details_page_viewmodel.dart';
import 'package:farmtrust_app/shared_widgets/collapsing_bar.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailsPageView extends DetailsPageViewModel {
  ScrollController _scrollController;

  bool lastStatus = true;

  _scrollListener() {
    if (isShrink != lastStatus) {
      setState(() {
        lastStatus = isShrink;
      });
    }
  }

  bool get isShrink {
    return _scrollController.hasClients && _scrollController.offset > 150;
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      final double _width = MediaQuery.of(context).size.width;

      return Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: isShrink ? Colors.green : Colors.transparent,
              titleSpacing: 0.0,
              title: FixedAppBar(),
              pinned: true,
              expandedHeight: 285.0,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left: 40.0, bottom: 20.0),
                background: CollapsingAppBar(),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
              return buildListItems(context, index, _width);
            }, childCount: 10))
          ],
        ),
      );
    });
  }

  Widget buildListItems(BuildContext context, int position, double width) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: width > 400 ? 15.0 : 10.0, bottom: 10.0),
        width: width > 400 ? 380.0 : 340.0,
        height: 90.0,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey[400], blurRadius: 20.0, spreadRadius: 5.0),
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



