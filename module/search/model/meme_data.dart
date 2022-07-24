class MemeData {
  final String id;
  final String name;
  final String postTym;
  final String dpUrl;
  final String postUrl;
  final String upVotes;
  String type;
  final String postSingleUrl;
  final String totalLikes;
  final String totalDisLikes;
  final String caption;
  final String totalComments;

  MemeData(
      {required this.postSingleUrl,
      required this.totalLikes,
      required this.totalDisLikes,
      required this.caption,
      required this.totalComments,
      required this.id,
      required this.name,
      required this.postTym,
      required this.dpUrl,
      required this.postUrl,
      required this.upVotes,
      required this.type});
}

final List<MemeData> memeList = [
  MemeData(
      postSingleUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      totalLikes: '7.1k',
      totalDisLikes: '1.24k',
      caption:
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
      totalComments: '32',
      id: 'id-001',
      name: 'Elbert Barr',
      postTym: '2min ago',
      dpUrl: 'assets/images/pro1.png',
      postUrl: 'assets/videos/sample1.mp4',
      upVotes: '7.1k upvotes',
      type: 'video'),
  MemeData(
      postSingleUrl:
          'https://images.unsplash.com/photo-1657524432821-284b2f5638ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      totalLikes: '5.1k',
      totalDisLikes: '1.24k',
      caption:
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
      totalComments: '32',
      id: 'id-002',
      name: 'Isaac Montes',
      postTym: '3min ago',
      dpUrl: 'assets/images/pro3.png',
      postUrl: 'assets/images/egg.png',
      upVotes: '5.1k upvotes',
      type: 'image'),
  MemeData(
      postSingleUrl:
          'https://images.unsplash.com/photo-1657524432821-284b2f5638ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      totalLikes: '4.5k',
      totalDisLikes: '1.24k',
      caption:
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
      totalComments: '32',
      id: 'id-003',
      name: 'Cruzz Hanna',
      postTym: '2min ago',
      dpUrl: 'assets/images/pro2.png',
      postUrl: 'assets/images/img8.png',
      upVotes: '4.5k upvotes',
      type: 'image'),
  MemeData(
      postSingleUrl:
          'https://images.unsplash.com/photo-1657524432821-284b2f5638ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      totalLikes: '8.1k',
      totalDisLikes: '1.24k',
      caption:
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
      totalComments: '32',
      id: 'id-004',
      name: 'Eldon Obrien',
      postTym: '4min ago',
      dpUrl: 'assets/images/pro4.png',
      postUrl: 'assets/images/img7.png',
      upVotes: '8.1k upvotes',
      type: 'image'),
  MemeData(
      postSingleUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      totalLikes: '3.7k',
      totalDisLikes: '1.24k',
      caption:
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
      totalComments: '32',
      id: 'id-005',
      name: 'Cruzz Hanna',
      postTym: '6min ago',
      dpUrl: 'assets/images/pro2.png',
      postUrl: 'assets/videos/sample3.mp4',
      upVotes: '3.7k upvotes',
      type: 'video'),
  MemeData(
      postSingleUrl:
          'https://images.unsplash.com/photo-1657524432821-284b2f5638ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      totalLikes: '9.3k',
      totalDisLikes: '1.24k',
      caption:
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
      totalComments: '32',
      id: 'id-006',
      name: 'Eldon Obrien',
      postTym: '3min ago',
      dpUrl: 'assets/images/pro4.png',
      postUrl: 'assets/images/color.png',
      upVotes: '9.3k upvotes',
      type: 'image'),
  MemeData(
      postSingleUrl:
          'https://images.unsplash.com/photo-1657524432821-284b2f5638ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      totalLikes: '2.9k',
      totalDisLikes: '1.24k',
      caption:
          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
      totalComments: '32',
      id: 'id-007',
      name: 'Elbert Barr',
      postTym: '5min ago',
      dpUrl: 'assets/images/pro1.png',
      postUrl: 'assets/images/dog.png',
      upVotes: '2.9k upvotes',
      type: 'image'),
];
