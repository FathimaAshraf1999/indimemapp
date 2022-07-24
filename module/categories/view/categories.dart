import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/home/view/widget/constants.dart';
import 'package:indimeme_frontend/module/app/view/widget/bottom_navigation.dart';
import 'package:indimeme_frontend/module/categories/model/categories_data.dart';
import 'package:indimeme_frontend/module/categories/view/widgets/post_items_structure.dart';
import 'widgets/categories_button.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:indimeme_frontend/module/categories/model/category_button_data.dart';
import 'package:indimeme_frontend/module/category_singlepage/see_all.dart';



class CategoriesPage extends StatefulWidget {
  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  // User clicked  category index
  int tapedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 0, 0),
            child: Text('Categories',
                style: kAppbarStyle),
          ),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                  // To build a listview  of categories from API
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              tapedIndex = index;
                            });
                          },
                          child: categoriesButton(
                            height: 33,
                            width: 80,
                            color: tapedIndex == index
                                ? kActiveCategoryColor
                                : kInactiveCategoryColor,
                            text: categories[index].categoryName,
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'RECENT POSTS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Horror',
                      style: TextStyle(
                          fontFamily: 'Open_Sans',
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w900),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SeeAllPage()));
                      },
                      child: categoriesButton(
                        height: 25,
                        width: 60,
                        text: 'See All',
                        color: kActiveCategoryColor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Flexible(
                  // height: 500,
                  child: MasonryGridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: PostItemsStructure(postData: postItems[index],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Sports',
                  style: TextStyle(
                      fontFamily: 'Open_Sans',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 15,
                ),
                Flexible(
                  // height: 500,
                  child: MasonryGridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: PostItemsStructure(postData: postItems[index],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Most Viewed',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Flexible(
                  // height: 500,
                  child: MasonryGridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: postItems.length,
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: PostItemsStructure(postData: postItems[index],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar:const BottomNavigation(
          activeIcon: 'category',
        ),
      ),
    );
  }
}
