import 'package:dio/dio.dart';
import 'package:monologue/data_sources.dart';
import 'package:monologue/models/user_model.dart';

class UserApi {
  static const baseUrl = 'http://13.209.111.163:8080/user';
  Dio dio = Dio();

  Future<UserModel> userProfile() async {
    try {
      print(accessToken);
      final response = await dio.get(
        '$baseUrl/profile',
        options: Options(
          headers: {
            "Authorization": "Bearer $accessToken",
          },
        ),
      );
      if (response.statusCode == 200) {
        final data = UserModel.fromJson(response.data);
        return data;
      } else {
        print('Error: ${response.statusCode}');
        return UserModel.init();
      }
    } catch (e) {
      print('Exception occurred: $e');
      return UserModel.init();
    }
  }

  deleteUser() async {
    // ignore: unused_local_variable
    final response = await dio.delete(
      baseUrl,
      options: Options(
        headers: {
          "Authorization": "Bearer $accessToken",
        },
      ),
    );
  }
}
