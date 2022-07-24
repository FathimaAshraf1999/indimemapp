  class PostModel {
  final String id;
  final String Username;
  final String profilePic;
  final String postTime;
  final String  postpic;
  final String upvotes;
  final String ? postType;

  const PostModel(
      {

        required this.id,
        required this.Username,
        required this.profilePic,
        required this.postTime,
        required this.postpic,
        required this.upvotes,
         this.postType
      });
}

const postItems = [
  PostModel(
    id: '01',
    Username: 'Elbert Barr',
    profilePic: 'assets/images/Ellipse1.png',
    postTime: '2min ago',
    postpic: 'assets/videos/vid1.mp4',
    upvotes: '2.1k upvotes',
    postType: 'video',
  ),
  PostModel(
      id: '02',
      postType: 'image',
      Username: 'Cruz Hanna',
      profilePic: 'assets/images/Ellipse2.png',
      postTime: '5min ago',
      postpic: 'assets/images/Rectangle2.png',
      upvotes: '1.1k upvotes'

  ),
  PostModel(
      id: '03',
      Username: 'Isaac Montes',
      postType: 'image',
      profilePic: 'assets/images/Ellipse3.png',
      postTime: '5min ago',
      postpic: 'assets/images/Rectangle4.png',
      upvotes: '7.1k upvotes'),
  PostModel(
      id: '04',
      Username: 'Eldon Obrien',
      postType: 'video',
      profilePic: 'assets/images/Ellipse4.png',
      postTime: '2min ago',
      postpic: 'assets/videos/vid4.mp4',
      upvotes: '2.1k upvotes'),

  PostModel(
      id: '05',
      Username: 'Elbert Barr',
      postType: 'image',
      profilePic: 'assets/images/Ellipse1.png',
      postTime: '2min ago',
      postpic: 'assets/images/Rectangle5.png',
      upvotes: '2.1k upvotes'),
  PostModel(
      id: '06',
      Username: 'Cruz Hanna',
      postType: 'image',
      profilePic: 'assets/images/Ellipse2.png',
      postTime: '5min ago',
      postpic: 'assets/images/Rectangle1.png',
      upvotes: '1.1k upvotes'),
];