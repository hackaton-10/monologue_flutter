import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monologue/api/user_api.dart';
import 'package:monologue/data_sources.dart';
import 'package:monologue/views/auth/sign_in/page.dart';
import 'package:monologue/views/main/page.dart';
part 'scaffold.dart';
part 'logo.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return const _Scaffold(
      logo: _Logo(),
    );
  }
}
