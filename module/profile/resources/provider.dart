import 'dart:io';

import 'package:image_picker/image_picker.dart';

class Provider {
// image pick from gallery with image picker package
  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final imageTemporary = File(image.path);

    return imageTemporary;
  }

//photo capture from camera with image picker package
  Future takeImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;
    final imageTemporary = File(image.path);
    return imageTemporary;
  }
}
