import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/app/view/widget/simple_text_button.dart';

class BottomSheetContent extends StatelessWidget {
  BottomSheetContent({
    Key? key,
    required this.upload,
    required this.takephoto,
    required this.delete,
  }) : super(key: key);
  final VoidCallback upload;
  final VoidCallback takephoto;
  final VoidCallback delete;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          SimpleTextButton(
            text: 'Upload your photo',
            textcolor: Colors.white,
            onpress: upload,
          ),
          SimpleTextButton(
            text: 'Remove your photo',
            textcolor: Colors.white,
            onpress: delete,
          ),
          SimpleTextButton(
            text: 'Take photo',
            textcolor: Colors.white,
            onpress: takephoto,
          ),
        ],
      ),
    );
  }
}
