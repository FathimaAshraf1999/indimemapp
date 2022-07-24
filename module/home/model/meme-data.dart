class ImageData {
  final String id;
  final String name;
  final voteButton;
  final String postUrl;
  final cirimg;
  final mint;
  final String postType;

  const ImageData({
    required this.postType,
    required this.id,
    required this.name,
    required this.voteButton,
    required this.cirimg,
    required this.postUrl,
    required this.mint,
  });
}

const imageList = [
  ImageData(
      id: '01',
      name: 'Elbert Barr',
      voteButton: '2.1k upvotes',
      cirimg: 'assets/icons/eclipse.png',
      postUrl: 'assets/icons/Rectangle.png',
      mint: '2 minute ago',
      postType: 'image'),
  ImageData(
      id: '02',
      name: 'Cruz Hanna',
      voteButton: '1.1k upvotes',
      cirimg: 'assets/icons/cir2.png',
      postUrl: 'assets/icons/paint.png',
      mint: '5 minute ago',
      postType: 'image'),
  ImageData(
      id: '03',
      name: 'Isaac Montas',
      voteButton: '7.1k upvotes',
      cirimg: 'assets/icons/cir3.png',
      postUrl: 'assets/icons/color.png',
      mint: '2 minute ago',
      postType: 'image'),
  ImageData(
      id: '04',
      name: 'Eldon Obrian',
      voteButton: '2.1k upvotes',
      cirimg: 'assets/icons/cir4.png',
      postUrl: 'assets/videos/nature.mp4',
      mint: '5 minute ago',
      postType: 'video'),
  ImageData(
      id: '05',
      name: 'Elbert Barr',
      voteButton: '5.1k upvotes',
      cirimg: 'assets/icons/eclipse.png',
      postUrl: 'assets/icons/angel.png',
      mint: '2 minute ago',
      postType: 'image'),
  ImageData(
      id: '06',
      name: 'Cruz Hanna',
      voteButton: '1k upvotes',
      cirimg: 'assets/icons/cir2.png',
      postUrl: 'assets/icons/battery.png',
      mint: '5 minute ago',
      postType: 'image'),
];
