import 'package:dio/dio.dart';

class AiApi {
  static const baseUrl = 'http://13.209.111.163:8080/auth';
  Dio dio = Dio();

  //  Future<List<FrameModel>> all() async {
  //   // Pass 'accessToken' as a parameter
  //   try {
  //     final response = await dio.get(
  //       '$baseUrl/all',
  //       options: Options(
  //         headers: {
  //           "Authorization": "Bearer $accessToken",
  //         },
  //       ),
  //     );
  //     if (response.statusCode == 200) {
  //       print(response.data);
  //       final data = (response.data['data'] as List).map((json) => FrameModel.fromjson(json)).toList();
  //       print(data);
  //       return data;
  //     } else {
  //       print('Error: ${response.statusCode}');
  //       throw response.statusMessage.toString();
  //     }
  //   } catch (e) {
  //     print('Exception occurred: $e');
  //     throw e.toString();
  //   }
  // }
}
