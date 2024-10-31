import 'package:dio/dio.dart';
import 'package:monologue/data_sources.dart';
import 'package:monologue/models/frame_model.dart';

class FrameApi {
  static const baseUrl = 'http://13.209.111.163:8080/frame';
  final Dio dio = Dio();

  Future<List<FrameModel>> all() async {
    // Pass 'accessToken' as a parameter
    try {
      final response = await dio.get(
        '$baseUrl/all',
        options: Options(
          headers: {
            "Authorization": "Bearer $accessToken",
          },
        ),
      );
      if (response.statusCode == 200) {
        final data = (response.data['data'] as List).map((json) => FrameModel.fromjson(json)).toList();
        return data;
      } else {
        print('Error: ${response.statusCode}');
        throw response.statusMessage.toString();
      }
    } catch (e) {
      print('Exception occurred: $e');
      throw e.toString();
    }
  }

  Future<List<FrameModel>> myFrame() async {
    // Pass 'accessToken' as a parameter
    try {
      final response = await dio.get(
        '$baseUrl/my',
        options: Options(
          headers: {
            "Authorization": "Bearer $accessToken",
          },
        ),
      );
      if (response.statusCode == 200) {
        print(response.data);
        final data = (response.data['data'] as List).map((json) => FrameModel.fromjson(json)).toList();
        print(data);
        return data;
      } else {
        print('Error: ${response.statusCode}');
        throw response.statusMessage.toString();
      }
    } catch (e) {
      print('Exception occurred: $e');
      throw e.toString();
    }
  }
}
