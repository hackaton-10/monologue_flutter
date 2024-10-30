class SigninModel {
  final String? id;
  final String? pw;
  final String? accessToken;
  final String? refreshToken;

  SigninModel({
    this.id,
    this.pw,
    this.accessToken,
    this.refreshToken,
  });

  factory SigninModel.fromJson(Map<String, dynamic> json) {
    return SigninModel(
      accessToken: json['data']['accessToken'],
      refreshToken: json['data']['refreshToken'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'password': pw,
      };
}

class SignupModel {
  final String id;
  final String name;
  final String password;

  SignupModel({
    required this.id,
    required this.name,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'password': password,
      };
}
