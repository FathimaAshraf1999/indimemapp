class Post {
  String? caption;
  String? description;
  String? filePath;
  List<Object?> categories = [];
  bool? isVideo;

  Post(
      {required this.caption,
      required this.description,
      required this.filePath,
      required this.categories,
      required this.isVideo});
}
