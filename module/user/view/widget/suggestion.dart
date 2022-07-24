import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/user/constants.dart';
import 'package:indimeme_frontend/module/user/model/suggestion_data.dart';


class FollowUser extends StatelessWidget {
  final SuggestionData? suggestionData; //model
  FollowUser({this.suggestionData});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Container(
        width: 165,
        height: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF282E36),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF282E30),
              blurRadius: 1.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
              offset: Offset(
                1.0, // Move to right 10  horizontally
                1.0, // Move to bottom 5 Vertically
              ),
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 95.0),
              child: SizedBox(
                width: 10.0,
                height: 10.0,
                child: TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.close,
                    color: kIconColor,
                    size: 14,
                  ),
                ),
              ),
            ),
            CircleAvatar(
              backgroundImage: AssetImage(suggestionData!.imageUrl),
              radius: 35.0,
            ),
            SizedBox(
              height: 35.0,
              child: TextButton(
                style: TextButton.styleFrom(primary: Colors.white),
                onPressed: () {},
                child: Text(
                  suggestionData!.name,
                  style: kNameStyle,
                ),
              ),
            ),
            Column(
              children: const <Widget>[
                Text(
                  'Followed by Alex',
                  style: kCommonStyle,
                ),
                Text(
                  '+5 More',
                  style: kCommonStyle,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SizedBox(
                width: 124.0,
                height: 30.0,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2AAD60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: Text(suggestionData!.status)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
