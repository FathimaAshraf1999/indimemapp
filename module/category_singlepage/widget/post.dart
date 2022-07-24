import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:indimeme_frontend/module/category_singlepage/model/model_categories.dart';

class SinglePost extends StatefulWidget {
  final ImageData imageData;

  SinglePost({required this.imageData});

  @override
  State<SinglePost> createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    _controller = VideoPlayerController.asset(widget.imageData.postUrl);
    _controller.addListener(() {
      setState(() {});
    });
    _controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // final String postType;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(widget.imageData.profilePic),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      widget.imageData.name,
                    ),
                    Text(
                      widget.imageData.time,
                    )
                  ],
                ),
              ],
            ),

            //working on videoplayer
            SizedBox(height: 10),
            Stack(children: [
              widget.imageData.postType == 'image'
                  ? Image(image: AssetImage(widget.imageData.postUrl))
                  : AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),

              //position on vdio button
              Positioned.fill(
                  top: 5.0,
                  left: 20.0,
                  child: TextButton(
                    onPressed: () {
                      if (_controller.value.isPlaying) {
                        _controller.pause();
                      } else {
                        _controller.play();
                      }
                      setState(() {});
                    },
                    child: Icon(
                      widget.imageData.postType == 'video'
                          ? (_controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_circle)
                          : null,
                      size: 40,
                      color: Colors.white,
                    ),
                  )),
              Positioned(
                bottom: 5.0,
                left: 2.0,
                child: Row(
                  children: [
                    Icon(
                      Icons.thumb_up_outlined,
                      size: 20.0,
                      color: Colors.white.withOpacity(0.9),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text('${widget.imageData.upvotes}')
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
