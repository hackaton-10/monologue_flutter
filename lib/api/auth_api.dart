import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:monologue/data_sources.dart';
import 'package:monologue/models/auth_model.dart';

class AuthApi {
  static const baseUrl = 'http://13.209.111.163:8080/auth';
  Dio dio = Dio();

  Future<bool> signIn() async {
    try {
      final response = await dio.post(
        '$baseUrl/sign-in',
        data: jsonEncode(SigninModel(
          id: idSigninTextEditingController.text,
          pw: pwSigninTextEditingController.text,
        ).toJson()),
      );
      if (response.statusCode == 200) {
        final data = SigninModel.fromJson(response.data);
        print(data.accessToken);
        accessToken = data.accessToken;
        refreshToken = data.refreshToken;
        return true;
      } else {
        print('Error: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('Exception occurred: $e');
      return false;
    }
  }

  signUp() async {
    try {
      final response = await dio.post(
        '$baseUrl/sign-up',
        data: jsonEncode(SignupModel(
          id: idSignupTextEditingController.text,
          name: usernameSignupTextEditingController.text,
          password: pwSignupTextEditingController.text,
        ).toJson()),
      );
      if (response.statusCode == 201) {
        return response.statusCode;
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception occurred: $e');
    }
  }
}
