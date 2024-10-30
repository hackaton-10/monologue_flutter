class FrameModel {
  final String title;
  final String imageUrl;

  FrameModel({
    required this.imageUrl,
    required this.title,
  });

  factory FrameModel.fromjson(Map<String, dynamic> json) {
    return FrameModel(
      imageUrl: json['imageUrl'],
      title: json['title'],
    );
  }
}
