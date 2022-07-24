import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';
import 'package:indimeme_frontend/module/profile/Model/post_model.dart';


class IndimemePost extends StatefulWidget {



  final PostModel postModel;
  IndimemePost({required this.postModel});


  @override
  State<IndimemePost> createState() => _IndimemePostState();

}

class _IndimemePostState extends State<IndimemePost> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer(){
    _controller = VideoPlayerController.asset(widget.postModel.postpic);
    _controller.addListener(() {
      setState(() {});
    });
    _controller.initialize().then((value){
      setState(() {});
    });

  }
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(width: 20,),
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(widget.postModel.profilePic),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      widget.postModel.Username,
                      style: TextStyle(color: Colors.white70),
                    ),
                    Text(
                      widget.postModel.postTime,
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Stack(children: [
              widget.postModel.postType == 'image'
                  ? Image.asset(widget.postModel.postpic)

                  :AspectRatio(
                   aspectRatio: _controller.value.aspectRatio,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                        child: VideoPlayer(_controller)),
              ),
             
             Positioned.fill(

              child: Center(
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
                //video pause and play button
                widget.postModel.postType == 'video'
                    ? (_controller.value.isPlaying
                    ? Icons.pause_circle_outline
                    : Icons.play_circle_outline_outlined)
                    : null,
                color: Colors.white.withOpacity(0.9),
            ),
          ),
              )
      ),
              Positioned(
                bottom: 8.0,
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
                  widget.postModel.upvotes,
                  style: TextStyle(
                    color: Colors.white,

                  ),
                ),
              ),
              Positioned(
                  bottom: 5.0,
                  right: 2.0,
                  child: Icon(Icons.more_horiz)),

            ]),
          ],
        ),
      ),
    );
  }
}


