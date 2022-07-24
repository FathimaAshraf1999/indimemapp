import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/home/view/widget/constants.dart';
import 'package:indimeme_frontend/module/app/view/widget/bottom_navigation.dart';
import 'package:indimeme_frontend/module/home/model/meme-data.dart';
import 'package:indimeme_frontend/module/home/view/widget/home-images.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:indimeme_frontend/module/home/view/widget/category-button.dart';
import 'package:indimeme_frontend/module/home/model/categories.dart';
import 'package:indimeme_frontend/module/notification/view/notification.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int clickedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //Creating Appbar to the design
        appBar: AppBar(
          title: Text(
            'Trending',
            style: kAppbarStyle,
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          actions: [
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()),
                  );
                },
                child: Image.asset('assets/icons/bell.png'),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          //Using a SingleChildScrollView to scroll the entire page
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 36,
                ),
                SizedBox(
                  height: 40,
                  // To build a listview  of categories
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            clickedIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CategoryButton(
                            color: clickedIndex == index
                                ? kInactiveColour
                                : kActiveColor,
                            text: categories[index].title,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: MasonryGridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: imageList.length,
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 2,
                    itemBuilder: (context, index) {
                      return HomeImage(imageData: imageList[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigation(activeIcon: 'homeIcon',),
      ),
    );
  }
}
