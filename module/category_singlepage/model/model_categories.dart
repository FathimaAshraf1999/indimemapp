import 'package:flutter/material.dart';

class ImageData {
  final String id;
  final String name;
  final String profilePic;
  final String time;
  final String postUrl;
  final String upvotes;
  final String postType;


  const ImageData({required this.postType,
    required this.id,
    required this.name,
    required this.profilePic,
    required this.time,
    required this.postUrl,
    required this.upvotes,
  });

}

const postList = [
  ImageData(
      id: '01',
      name: 'Elbert Bar',
      profilePic: 'assets/images/Ellipse.png',
      time: '2 min ago',
      postUrl: 'assets/images/car.png',
      upvotes: '2.1k  upvotes',
      postType: 'image'),
  ImageData(
      id: '02',
      name: 'Cruz Henna',
      profilePic: 'assets/images/img2.png',
      time: '5 min ago',
      postUrl: 'assets/videos/vdio.mp4',
      upvotes: '3.1k  upvotes',
      postType: 'video'),
  ImageData(
      id: '03',
      name: 'Isac Montes',
      profilePic: 'assets/images/img3.png',
      time: '6 min ago',
      postUrl: 'assets/images/dog.png',
      upvotes: '2.1k  upvotes',
      postType: 'image'),
  ImageData(
      id: '04',
      name: 'Eldon Obrien',
      profilePic: 'assets/images/img4.png',
      time: '2 min ago',
      postUrl: 'assets/images/egg.png',
      upvotes: '2.1k  upvotes',
      postType: 'image'),
  ImageData(
      id: '05',
      name: 'Elbert Bar',
      profilePic: 'assets/images/img5.png',
      time: '5 min ago',
      postUrl: 'assets/images/girl.png',
      upvotes: '2.1k  upvotes',
      postType: 'image'),
  ImageData(
      id: '06',
      name: 'Cruz Henna',
      profilePic: 'assets/images/img6.png',
      time: '2 min ago',
      postUrl: 'assets/images/battery.png',
      upvotes: '2.1k  upvotes',
      postType: 'image'),
];

