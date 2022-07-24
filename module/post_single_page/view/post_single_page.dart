// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/post_single_page/view/widget/download_post.dart';
import 'package:indimeme_frontend/module/post_single_page/view/widget/image_view.dart';
import 'package:indimeme_frontend/module/post_single_page/view/widget/post_details.dart';
import 'package:indimeme_frontend/module/post_single_page/view/widget/video_player.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:indimeme_frontend/module/search/model/meme_data.dart';

class PostSinglePage extends StatefulWidget {
  PostSinglePage({required this.memeData});

  // passing data from model MemeData
  final MemeData memeData;

  @override
  State<PostSinglePage> createState() => _PostSinglePageState();
}

class _PostSinglePageState extends State<PostSinglePage> {
  //side action IconButton icon size
  final double iconSize = 30;

  // to toggle like and dislike on button press
  bool likeToggle = false;
  bool dislikeToggle = false;

  //TextStyle fontFamily used
  String fontFamily = 'Open_Sans';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1D2128),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            //Passed from search page
            widget.memeData.type == 'image'
                ? ImageView(src: widget.memeData.postSingleUrl)
                : VideoPlayer(src: widget.memeData.postSingleUrl),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      flex: 12,
                      // to display post details, profile. Data from List post is passed on
                      child: PostDetails(
                        singlePost: widget.memeData,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      // used to display side action bar Icons
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          //Like button
                          IconButton(
                            onPressed: () {
                              setState(() {
                                //sets likeToggle = true on press
                                likeToggle = !likeToggle;
                                if (likeToggle == true) {
                                  dislikeToggle = false;
                                }
                              });
                            },
                            icon: likeToggle
                                ? Icon(Icons.thumb_up)
                                : Icon(Icons.thumb_up_outlined),
                            iconSize: iconSize,
                            color: likeToggle
                                ? Color(0xFF2AAD60)
                                : Color(0xFFFFFFFF),
                          ),
                          Text(
                            //shows demo no.of likes
                            widget.memeData.totalLikes,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: fontFamily,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          //dislike button
                          IconButton(
                            onPressed: () {
                              setState(() {
                                //sets dislikeToggle = true on press
                                dislikeToggle = !dislikeToggle;
                                if (dislikeToggle == true) {
                                  likeToggle = false;
                                }
                              });
                            },
                            icon: dislikeToggle
                                ? Icon(Icons.thumb_down)
                                : Icon(Icons.thumb_down_outlined),
                            iconSize: iconSize,
                            color: dislikeToggle
                                ? Color(0xFF2AAD60)
                                : Color(0xFFFFFFFF),
                          ),
                          Text(
                            //shows demo no.of dislikes
                            widget.memeData.totalDisLikes,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: fontFamily,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          //comment button
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.chat_bubble_outline),
                            iconSize: iconSize,
                            color: const Color(0xFFFFFFFF),
                          ),
                          Text(
                            //shows demo no.of comments
                            widget.memeData.totalComments,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: fontFamily,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          //download button
                          IconButton(
                            onPressed: () async {
                              // asks for storage permission
                              final status = await Permission.storage.request();
                              if (status.isGranted) {
                                //downloads if type = 'video'
                                if (widget.memeData.type == 'video') {
                                  showDialog(
                                    context: context,
                                    builder: (context) => DownloadPost(
                                      src: widget.memeData
                                          .postSingleUrl, // passes video file url
                                      fileName:
                                          'Video.mp4', // sets file name to downloaded video
                                    ),
                                  );
                                }

                                //downloads if  type = 'image'
                                else {
                                  showDialog(
                                    context: context,
                                    builder: (context) => DownloadPost(
                                      src: widget.memeData
                                          .postSingleUrl, // passes image file url
                                      fileName:
                                          'image.png', // sets file name to downloaded image
                                    ),
                                  );
                                }
                              }
                            },
                            icon: const Icon(Icons.download_outlined),
                            iconSize: iconSize,
                            color: const Color(0xFFFFFFFF),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
