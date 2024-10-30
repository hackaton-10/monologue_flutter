import 'package:dio/dio.dart';
import 'package:monologue/data_sources.dart';
import 'package:monologue/models/frame_model.dart';

class FrameApi {
  static const baseUrl = 'http://13.209.111.163:8080/user';
  final Dio dio = Dio();

  Future<void> userProfile(String accessToken) async {
    // Pass 'accessToken' as a parameter
    try {
      final response = await dio.get(
        '$baseUrl/profile',
        options: Options(
          headers: {
            "Authorization": "Bearer $accessToken",
          },
        ),
      );
      if (response.statusCode == 200) {
        // Assuming fromJson is a method that parses a list of FrameModel
        frame = (response.data['data'] as List).map((json) => FrameModel.fromjson(json)).toList();
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception occurred: $e');
    }
  }
}
