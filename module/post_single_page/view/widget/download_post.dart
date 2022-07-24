// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class DownloadPost extends StatefulWidget {
  DownloadPost({required this.src, required this.fileName});
  //used to pass file url
  final String src;
  //used to set downloaded file name
  final String fileName;

  @override
  _DownloadPostState createState() => _DownloadPostState();
}

class _DownloadPostState extends State<DownloadPost> {
  //Dio plug in is used to download file
  Dio dio = Dio();
  //to set download progress
  double progress = 0.0;

  void startDownloading() async {
    //passes file url from src to url
    String url = widget.src;

    String fileName = widget.fileName;

    String path = await _getFilePath(fileName);

    await dio.download(
      url,
      path,
      onReceiveProgress: (recivedBytes, totalBytes) {
        setState(() {
          progress = recivedBytes / totalBytes;
        });
        // print(progress);
      },
      deleteOnError: true,
    ).then((_) {
      Navigator.pop(context);
    });
  }

  //sets path to download file //android/data/packageName/..
  Future<String> _getFilePath(String filename) async {
    final dir = await getExternalStorageDirectory();
    return "${dir!.path}/$filename";
  }

  @override
  void initState() {
    super.initState();
    startDownloading();
  }

  @override
  Widget build(BuildContext context) {
    String downloadingProgress = (progress * 100).toInt().toString();

    //Shows download progress in an alert box
    return AlertDialog(
      backgroundColor: Colors.black,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator.adaptive(),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Downloading: $downloadingProgress%",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: 'Open Sans',
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
