import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/user/model/suggestion_data.dart';
import 'package:indimeme_frontend/module/user/view/widget/suggestion.dart';
import 'package:indimeme_frontend/module/app/view/widget/bottom_navigation.dart';
import 'package:indimeme_frontend/module/user/constants.dart';

class FollowUserPage extends StatelessWidget {
  static const id = 'FollowUserPage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onPanDown: (detail) {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Row(
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Suggestions',
                        style: kHead,
                      ),
                    ],
                  ),
                ],
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: suggestionList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 226),
                itemBuilder: (context, index) {
                  return FollowUser(suggestionData: suggestionList[index]);
                },
                scrollDirection: Axis.vertical,
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigation(
          activeIcon: 'menu',
        ),
      ),
    );
  }
}
