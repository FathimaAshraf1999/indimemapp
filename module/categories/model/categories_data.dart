// Model for a post with username, content,profile pic,time of post,no of likes
class PostData {
  final String id;
  final String name;
  final String profilePic;
  final String postTime;
  final String postUrl;
  final String upvotes;
  final String postType;

  const PostData(
      {required this.postType,
        required this.id,
        required this.name,
        required this.profilePic,
        required this.postTime,
        required this.postUrl,
        required this.upvotes});
}

const postItems = [
  PostData(
      id: '01',
      name: 'Elbert Barr',
      profilePic: 'assets/images/pro1.png',
      postTime: '2min ago',
      postUrl: 'assets/images/girl.png',
      upvotes: '2.1k upvotes',
      postType: 'image'),
  PostData(
      id: '02',
      name: 'Cruz Hanna',
      profilePic: 'assets/images/pro2.png',
      postTime: '3min ago',
      postUrl: 'assets/images/img8.png',
      upvotes: '1.1k upvotes',
      postType: 'image'),
  PostData(
      id: '03',
      name: 'Isaac Montes',
      profilePic: 'assets/images/pro3.png',
      postTime: '5min ago',
      postUrl: 'assets/videos/boat.mp4',
      upvotes: '7.1k upvotes',
      postType: 'video'),
  PostData(
      id: '04',
      name: 'Eldon Obrien',
      profilePic: 'assets/images/pro4.png',
      postTime: '2min ago',
      postUrl: 'assets/videos/video1.mp4',
      upvotes: '2.1k upvotes',
      postType: 'video'),
  PostData(
      id: '05',
      name: 'Eldon Obrien',
      profilePic: 'assets/images/pro1.png',
      postTime: '10min ago',
      postUrl: 'assets/images/cloud.png',
      upvotes: '2.9k upvotes',
      postType: 'image'),
  PostData(
      id: '06',
      name: 'Isaac Montes',
      profilePic: 'assets/images/pro1.png',
      postTime: '8min ago',
      postUrl: 'assets/images/egg.png',
      upvotes: '18.1k upvotes',
      postType: 'image'),
];
