class INotification {
  final String id;
  final String name;
  final String profilePicURL;
  final String message;
  final String postImageURL;
  final String timeAgo;
  final String hasStory;
  late final String type;

  INotification({
    required this.id,
    required this.name,
    required this.profilePicURL,
    required this.message,
    required this.postImageURL,
    required this.timeAgo,
    required this.hasStory,
    required this.type,
  });
}

var notificList = [
  INotification(
    id: 'id-01',
    name: 'Linsha',
    profilePicURL: 'assets/images/1.jpg',
    message: ' likes your photo',
    postImageURL: 'assets/images/2.jpg',
    timeAgo: '2022-06-11',
    hasStory: 'no',
    type: 'photo-like',
  ),
  INotification(
    id: 'id-02',
    name: 'Tovino',
    profilePicURL: 'assets/images/2.jpg',
    message: ' requested to follow you',
    postImageURL: '',
    timeAgo: '2022-06-14',
    hasStory: 'no',
    type: 'follow-request',
  ),
  INotification(
    id: 'id-03',
    name: 'Kukku',
    profilePicURL: 'assets/images/6.jpg',
    message: ' started following you ',
    postImageURL: 'assets/images/6.jpg',
    timeAgo: '2022-06-11',
    hasStory: 'no',
    type: 'started-following',
  ),
  INotification(
    id: 'id-04',
    name: 'Anu',
    profilePicURL: 'assets/images/5.jpg',
    message:
        ' asna_ashraf and thread_of_hoop followed lidin . see their posts ',
    postImageURL: 'assets/images/4.jpg',
    timeAgo: '2022-06-13',
    hasStory: 'no',
    type: '',
  ),
  INotification(
    id: 'id-05',
    name: 'Nayans',
    profilePicURL: 'assets/images/4.jpg',
    message: ' requested to follow you ',
    postImageURL: 'assets/images/4.jpg',
    timeAgo: '2022-06-13',
    hasStory: 'no',
    type: 'follow-request',
  ),
  INotification(
    id: 'id-06',
    name: 'Abhi',
    profilePicURL: 'assets/images/3.jpg',
    message: ' started following you ',
    postImageURL: 'assets/images/6.jpg',
    timeAgo: '2022-06-20',
    hasStory: 'no',
    type: 'started-following',
  ),
  INotification(
    id: 'id-07',
    name: 'Anoop',
    profilePicURL: 'assets/images/download.jpg',
    message: ' likes your photo',
    postImageURL: 'assets/images/4.jpg',
    timeAgo: '2022-06-21',
    hasStory: 'no',
    type: 'photo-like',
  ),
];
