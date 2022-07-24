import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/post/view/widgets/common_widgets.dart';

Future<String?> filePicker(BuildContext context) async {
  String? option = await showModalBottomSheet(
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      barrierColor: Colors.black12,
      context: context,
      builder: (context) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
            leading: Icon(
              Icons.camera,
              color: Colors.white,
            ),
            title: Text(
              'Image',
              style: kTextStyle,
            ),
            onTap: () async => Navigator.pop(context, 'image'),
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.white),
            title: Text('Video', style: kTextStyle),
            onTap: () async => Navigator.pop(context, 'video'),
          ),
        ]);
      });
  return option;
}
