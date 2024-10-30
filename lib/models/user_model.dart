class UserModel {
  String id;
  String name;
  dynamic imageUrl;

  UserModel({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  UserModel.init()
      : id = 'eckmung',
        name = '익명이',
        imageUrl = null;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['data']['id'],
      name: json['data']['name'],
      imageUrl: json['data']['imageUrl'],
    );
  }

  Map<String, dynamic> toJsonImage() => {'image': imageUrl};
  Map<String, dynamic> toJsonName() => {'name': name};
}
