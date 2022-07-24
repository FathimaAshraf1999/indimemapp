import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/category_singlepage/model/model_categories.dart';
import 'package:indimeme_frontend/module/app/view/widget/bottom_navigation.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:indimeme_frontend/module/category_singlepage/widget/post.dart';

class SeeAllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 30),
        child: Wrap(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: SizedBox(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25.0),
                        child: Text(
                          "Comedy",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 3.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 500,
                      child: MasonryGridView.count(
                        shrinkWrap: true,
                        itemCount: 6,
                        crossAxisCount: 2,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: SinglePost(imageData: postList[index]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
      bottomNavigationBar: const BottomNavigation(
        activeIcon: 'category',
      ),
    );
  }
}
