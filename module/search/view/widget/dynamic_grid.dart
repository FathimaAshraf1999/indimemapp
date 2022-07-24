import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/post_single_page/view/post_single_page.dart';
import 'package:video_player/video_player.dart';
import 'package:indimeme_frontend/module/search/view/widget/constants.dart';
import 'package:indimeme_frontend/module/search/model/meme_data.dart';


class DynamicGrid extends StatefulWidget {
  final MemeData memeData;

  DynamicGrid({required this.memeData});

  @override
  State<DynamicGrid> createState() => _DynamicGridState();
}

class _DynamicGridState extends State<DynamicGrid> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    ///player initializing
    loadVideoPlayer();

    super.initState();
  }

  loadVideoPlayer() {
    ///video from assets
    _controller = VideoPlayerController.asset(widget.memeData.postUrl);
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
    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: CircleAvatar(
                    radius: 20,

                    ///profile picture section
                    backgroundImage: AssetImage(widget.memeData.dpUrl),
                  ),
                ),
                Column(
                  children: [
                    ///name and posted time
                    Text(
                      widget.memeData.name,
                      style: kNameStyle,
                    ),
                    Text(
                      widget.memeData.postTym,
                      style: kPostedTymStyle,
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0, top: 5.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),

                    ///post section
                    child: widget.memeData.type == 'image'
                        ? GestureDetector(
                            child: Image.asset(widget.memeData.postUrl),
                            onTap: (() {
                              //Navigates to post_single_page and shows image
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return PostSinglePage(
                                  memeData: widget.memeData, //passes post type from List
                                );
                              }));
                            }),
                          )
                        : GestureDetector(
                            child: AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            ),
                            onTap: (() {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return PostSinglePage(
                                  memeData: widget.memeData, //passes post type from List
                                );
                              }));
                            }),
                          ),
                  ),
                  Positioned(
                    ///positioning icons
                    bottom: 15,
                    left: 15,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.thumb_up_alt_outlined,
                          size: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(widget.memeData.upVotes, style: kUpvoteStyle),
                        const SizedBox(
                          width: 25,
                        ),
                        const Icon(Icons.more_horiz, size: 17),
                      ],
                    ),
                  ),

                  ///aligning play/pause button on center
                  Positioned.fill(
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PostSinglePage(
                              memeData: widget.memeData, //passes post type from List
                            );
                          }));

                          setState(() {});
                        },
                        child: Icon(
                          widget.memeData.type == 'video'
                              ? (_controller.value.isPlaying
                                  ? Icons.pause
                                  : Icons.play_circle)
                              : null,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
