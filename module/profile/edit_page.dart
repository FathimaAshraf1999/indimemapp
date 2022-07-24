import 'dart:io';

import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/app/view/constants.dart';
import 'package:indimeme_frontend/module/app/view/widget/bottom_sheet_content.dart';
import 'package:indimeme_frontend/module/app/view/widget/edit_field.dart';
import 'package:indimeme_frontend/module/app/view/widget/round_button.dart';
import 'package:indimeme_frontend/module/app/view/widget/bottom_navigation.dart';
import 'package:indimeme_frontend/module/profile/resources/provider.dart';

class EditPage extends StatefulWidget {
  const EditPage({
    Key? key,
  }) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  Text(
          'Edit Profile',
          style: kTextStyle.copyWith(fontSize: 25),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        activeIcon: 'menu',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      // open bottom sheet
                      showModalBottomSheet(
                          backgroundColor: Color.fromARGB(255, 62, 58, 58),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30),
                            ),
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 50.0),
                              child: BottomSheetContent(
                                upload: () async {
                                  //pick image from gallery
                                  var image = await Provider().getImage();
                                  setState(() {
                                    _image = image;
                                  });
                                  Navigator.pop(context);
                                },
                                takephoto: () async {
                                  //capture photo from camera
                                  var image = await Provider().takeImage();
                                  setState(() {
                                    _image = image;
                                  });
                                  Navigator.pop(context);
                                },
                                delete: () {
                                  setState(() {
                                    // to remove the image
                                    _image = null;
                                  });
                                  Navigator.pop(context);
                                },
                              ),
                            );
                          });
                    },
                    child: CircleAvatar(
                      radius: 70.0,
                      backgroundImage: _image != null
                          ? FileImage(_image!) as ImageProvider
                          : const AssetImage('assets/images/upload.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    children: [
                      const EditField(
                        content: 'thanweer',
                        label: 'User Name',
                      ),
                      const EditField(
                        label: 'Email',
                        content: 'thanweer@gmail.com',
                      ),
                      const EditField(
                        label: 'Phone Number',
                        content: '9995291385',
                      ),
                      const EditField(
                        label: 'Age',
                        content: '24',
                      ),
                      const EditField(
                        label: 'Qualification',
                        content: 'B.Tech',
                      ),
                      RoundButton(
                        text: 'Save',
                        onPress: () {},
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
