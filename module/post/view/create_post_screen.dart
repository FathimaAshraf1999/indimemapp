import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:indimeme_frontend/module/post/models/post.dart';
import 'package:indimeme_frontend/module/post/service/common_service.dart';
import 'package:indimeme_frontend/module/post/view/widgets/common_widgets.dart';
import 'package:indimeme_frontend/module/post/view/widgets/video_widget.dart';
import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';
import 'package:indimeme_frontend/module/app/view/widget/bottom_navigation.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({Key? key}) : super(key: key);

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  final ImagePicker _picker = ImagePicker();
  TextEditingController _captionController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  bool isUploadButtonVisible = true;
  XFile? pickedImage;
  XFile? pickedVideo;
  List<String> categoryList = [
    'sports',
    'Comedy',
    'games',
    'politics',
    'Horror',
    'Animals',
    'Pets',
    'Birds'
  ];
  List<Object?> selectedList = [];

  @override
  Widget build(BuildContext context) {
    final _items = categoryList
        .map((item) => MultiSelectItem<String>(item, item))
        .toList();
    return Scaffold(
      bottomNavigationBar: BottomNavigation(activeIcon: "add"),
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Create Post',
          style: TextStyle(
              fontFamily: "Open_Sans",
              fontSize: 25,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (isUploadButtonVisible)
              InkWell(
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF2AAD60)),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.black,
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.upload,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'BROWSE IMAGE/VIDEO',
                          style: TextStyle(
                              fontFamily: 'Open_Sans',
                              decoration: TextDecoration.underline,
                              color: Color(0xFF2AAD60),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () async {
                  String? _option = await filePicker(context);
                  if (_option != null) {
                    isUploadButtonVisible = true;
                    if (_option == 'image') {
                      pickedImage =
                          await _picker.pickImage(source: ImageSource.gallery);
                    } else {
                      pickedVideo =
                          await _picker.pickVideo(source: ImageSource.gallery);
                    }
                    setState(() {
                      if (pickedImage != null) {
                        pickedVideo = null;
                      } else if (pickedVideo != null) {
                        pickedImage = null;
                        // _playVideo(pickedVideo);
                      }
                    });
                  }
                },
              ),
            if (pickedImage != null)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              pickedImage = null;
                            });
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ))
                    ],
                  ),
                  Container(
                    height: 300,
                    width: 400,
                    padding: EdgeInsets.all(10),
                    child: Image.file(
                      //display Image
                      File(pickedImage!.path),
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            if (pickedVideo != null)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              pickedVideo = null;
                            });
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ))
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    //display Video
                    child: Center(child: VideoPlayerScreen(pickedVideo!.path)),
                  ),
                ],
              ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: _captionController,
                maxLines: 1,
                minLines: 1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Write your caption",
                    fillColor: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: _descriptionController,
                maxLines: 1,
                minLines: 1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Write your Description",
                    fillColor: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: MultiSelectBottomSheetField(
                backgroundColor: Colors.black,
                cancelText: Text(
                  'Cancel',
                  style: TextStyle(color: Color(0xFF2AAD60)),
                ),
                confirmText: Text(
                  'Ok',
                  style: TextStyle(color: Color(0xFF2AAD60)),
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                initialChildSize: 0.4,
                listType: MultiSelectListType.CHIP,

                // searchable: true,
                buttonText: Text("Select Categories"),
                title: Text(
                  "Categories",
                  style: kTextStyle,
                ),
                items: _items,
                checkColor: Colors.green,
                onConfirm: (values) {
                  FocusScope.of(context).unfocus();
                  selectedList = values;
                  // print(values[0].runtimeType);
                  // print(selectedList);
                },
                chipDisplay: MultiSelectChipDisplay(
                  onTap: (value) {
                    setState(() {
                      selectedList.remove(value);
                    });
                  },
                ),
              ),
            ),
            SuccessButton(
              title: 'Post',
              onTap: () async {
                bool isOK = await showConfirmation(context);
                if (isOK) {
                  print(selectedList);
                  FocusScope.of(context).unfocus();
                  Post post = Post(
                      caption: _captionController.text,
                      description: _descriptionController.text,
                      categories: selectedList,
                      isVideo: pickedVideo != null ? true : false,
                      filePath: pickedVideo != null
                          ? pickedVideo!.path
                          : pickedImage!.path);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (ctx) => DetailScreen(post)));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
