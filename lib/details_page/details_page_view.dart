import 'package:flutter/material.dart';
import 'package:farmtrust_app/details_page/details_page_viewmodel.dart';
import 'package:farmtrust_app/shared_widgets/collapsing_bar.dart';
import 'package:farmtrust_app/shared_widgets/fixed_bar.dart';
import 'package:farmtrust_app/shared_widgets/farmer_tile.dart';
import 'package:farmtrust_app/shared_widgets/single_line_tile.dart';
import 'package:farmtrust_app/shared_widgets/storage_tile.dart';
import 'package:farmtrust_app/shared_widgets/comments_tile.dart';

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
              FarmerDetailsTile(_width, 'Farmer Details'),
              SingleLineTile(
                  _width, 'Crop Production', 'Provided by Farmer (Lucy M.)'),
              SingleLineTile(
                  _width, 'Crop Aggrevation and Handling', 'By Miranio CBO'),
              StorageTile(_width, 'Storage', 'By Yash Commodities - Buyer'),
              SingleLineTile(_width, 'Retail', 'By Carrefour'),
              CommentsTile(_width, 'Comments')
            ]))
          ],
        ),
      );
    });
  }
}
