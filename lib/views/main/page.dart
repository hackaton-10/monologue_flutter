import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monologue/components/topbar.dart';
import 'package:monologue/data_sources.dart';
import 'package:monologue/views/main/camera/page.dart';
import 'package:monologue/views/main/home/page.dart';
import 'package:monologue/views/main/user/page.dart';
part './scaffold.dart';
part './bottom.dart';

// ignore: must_be_immutable
class MainPage extends StatelessWidget {
  MainPage({super.key});
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topbar: const MonologueTopbar(),
      body: [
        const HomePage(),
        CameraPage(
          camera: firstCamera,
        ),
        const UserPage(),
      ],
      bottomNav: _BottomNav(
        currentIndex: currentIndex,
      ),
    );
  }
}
