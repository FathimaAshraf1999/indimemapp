import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/categories/model/categories_data.dart';
import 'package:video_player/video_player.dart';

class PostItemsStructure extends StatefulWidget {
  final PostData postData;

  PostItemsStructure({required this.postData});

  @override
  State<PostItemsStructure> createState() => _PostItemsStructureState();
}

class _PostItemsStructureState extends State<PostItemsStructure> {
  //initialise video player controller
  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

// initialise video from asset
  loadVideoPlayer() {
    controller = VideoPlayerController.asset(widget.postData.postUrl);
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(widget.postData.profilePic),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      widget.postData.name,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      widget.postData.postTime,


                      style: TextStyle(color: Color(0xffA8A6B0),fontFamily: 'Open_Sans'),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Stack(children: [
              //ternary condition to display video or image
              widget.postData.postType == 'image'
                  ? Image(image: AssetImage(widget.postData.postUrl))
                  : AspectRatio(
                      aspectRatio: controller.value.aspectRatio,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: VideoPlayer(controller)),
                    ),
              //positioning the video player play button
              Positioned.fill(
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        if (controller.value.isPlaying) {
                          controller.pause();
                        } else {
                          controller.play();
                        }

                        setState(() {});
                      },
                      child: Icon(
                        widget.postData.postType == 'video'
                            ? (controller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_circle)
                            : null,
                        size: 35,
                        color: Colors.grey,
                      )),
                ),
              ),
              Positioned(
                // positioning like icon
                bottom: 5.0,
                left: 2.0,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.thumb_up_outlined,
                      size: 20.0,
                      color: Colors.white.withOpacity(0.9),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '2.1k upvotes',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,

                          fontFamily: 'Open_Sans'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.more_horiz_outlined,
                      size: 25,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
