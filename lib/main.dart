import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:monologue/data_sources.dart';
import 'package:monologue/views/splash/page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  // Filter for the front camera
  firstCamera = cameras.firstWhere(
    (camera) => camera.lensDirection == CameraLensDirection.front,
  );

  prefs = await SharedPreferences.getInstance();
  accessToken = prefs.getString('accessToken');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Colors.white),
        fontFamily: 'Pretendard',
      ),
      home: const SplashPage(),
    );
  }
}
