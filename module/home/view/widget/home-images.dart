import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/home/view/widget/constants.dart';
import 'package:indimeme_frontend/module/home/model/meme-data.dart';
import 'package:video_player/video_player.dart';

//Custom class used to set Home Page Images
class HomeImage extends StatefulWidget {
  @override
  State<HomeImage> createState() => _HomeImageState();
  final ImageData imageData;
  HomeImage({required this.imageData});
}

class _HomeImageState extends State<HomeImage> {
  //Set up video player
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

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(right: 10.0, top: 12.0),
        child: Container(
          width: 160,
          child: Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        // backgroundImage: AssetImage(widget.cirimg),
                        backgroundImage: AssetImage(widget.imageData.cirimg),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.imageData.name,
                            style: kTextStyle,
                          ),
                          Text(
                            widget.imageData.mint,
                            style: kMinStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Stack(
                children: [
                  //Using ternary operator to find image or video needed
                  widget.imageData.postType == 'image'
                      ? Image.asset(widget.imageData.postUrl)
                      : AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                              child: VideoPlayer(_controller)),
                        ),
                  Positioned(
                      top: 25.0,
                      left: 45.0,
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
                          //Setting pause icon to the video
                          widget.imageData.postType == 'video'
                              ? (_controller.value.isPlaying
                                  ? Icons.pause_circle_outline
                                  : Icons.play_circle_outline_outlined)
                              : null,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                  Positioned(
                    bottom: 5.0,
                    left: 4.0,
                    child: Icon(
                      Icons.thumb_up_off_alt,
                      size: 20.0,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                  Positioned(
                    bottom: 8.0,
                    left: 32.0,
                    child: Text(
                      widget.imageData.voteButton,
                      style: kIconStyle,
                    ),
                  ),
                  Positioned(
                      bottom: 5.0, right: 2.0, child: Icon(Icons.more_horiz))
                ],
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
