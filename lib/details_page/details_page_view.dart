import 'package:flutter/material.dart';
import 'package:farmtrust_app/details_page/details_page_viewmodel.dart';
import 'package:farmtrust_app/shared_widgets/collapsing_bar.dart';
import 'package:farmtrust_app/shared_widgets/fixed_bar.dart';
import 'package:farmtrust_app/shared_widgets/farmer_tile.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailsPageView extends DetailsPageViewModel {
  final Color _primaryColor = Color(0xff00c853);

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
              title: FixedAppBar(
                title: 'Green Gram - Nylon N26',
                isVisible: isShrink,
              ),
              pinned: true,
              expandedHeight: 285.0,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left: 40.0, bottom: 20.0),
                background: CollapsingAppBar(),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              ExpansionTile(
                title: Text('Farmer Details'),
                children: <Widget>[
                  FarmerDetailsTile(_width),
                  Container(
                      margin: EdgeInsets.only(
                          top: 15.0, left: 20.0, right: 20.0, bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Selling Price',
                                  style: TextStyle(
                                      color: _primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  'KSH 160/KG',
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 30.0,
                            child: VerticalDivider(
                              color: Colors.grey[400],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Land Size',
                                  style: TextStyle(
                                      color: _primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  '1.3 Acres',
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 30.0,
                            child: VerticalDivider(
                              color: Colors.grey[400],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Farming Method',
                                  style: TextStyle(
                                      color: _primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  'Conservation Agriculture',
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
                  Center(
                      child: Container(
                    child: RaisedButton(
                      textColor: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          IconButton(
                              icon: Image.asset(
                                'assets/ic_tip.png',
                                color: Colors.white,
                              ),
                              color: Colors.white,
                              onPressed: () {}),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                          ),
                          Text(
                            'Tip Farmer',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                      onPressed: () {},
                      color: Color(0xff00c853),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    width: 200.0,
                    height: 50.0,
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  )),
                ],
              )
            ]))
          ],
        ),
      );
    });
  }
}
