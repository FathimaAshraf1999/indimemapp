// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:indimeme_frontend/module/search/model/meme_data.dart';

class PostDetails extends StatelessWidget {
  PostDetails({required this.singlePost});

  String fontFamily = 'Open_Sans';
  // passing data from model MemeData
  final MemeData singlePost;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          dense: true,
          horizontalTitleGap: 12,
          minLeadingWidth: 0,
          title: Text(
            singlePost.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: fontFamily,
              color: Color(0xFFFFFFFF),
            ),
          ),
          leading: CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage(singlePost.dpUrl),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: ExpandableText(
            singlePost.caption,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFFFFFF),
              fontFamily: fontFamily,
            ),
            expandText: 'more',
            expandOnTextTap: true,
            collapseOnTextTap: true,
            maxLines: 1,
            linkColor: Colors.grey,
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
