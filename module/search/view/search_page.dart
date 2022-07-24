import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:indimeme_frontend/module/app/view/widget/bottom_navigation.dart';
import 'package:indimeme_frontend/module/search/view/widget/constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:indimeme_frontend/module/search/model/meme_data.dart';
import 'package:indimeme_frontend/module/search/view/widget/dynamic_grid.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: kTitleText,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigation(
        activeIcon: 'search',
      ),
      body: Container(
        color: Colors.black54,
        child: Column(
          children: [
            ///search field container
            Container(
              color: Colors.black,
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 8),
                child: SizedBox(
                  height: 30,
                  child: TextField(
                    ///search box
                    decoration: kSearchBoxStyle,
                  ),
                ),
              ),
            ),
            Flexible(
              ///scrollable gridview
              child: MasonryGridView.count(
                itemCount: memeList.length,
                padding: const EdgeInsets.symmetric(vertical: 30),
                // the number of columns
                crossAxisCount: 2,
                // vertical gap between two items
                mainAxisSpacing: 4,
                // horizontal gap between two items
                crossAxisSpacing: 2,
                itemBuilder: (context, index) {
                  ///display each item with custom widget DynamicGrid
                  return DynamicGrid(memeData: memeList[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
