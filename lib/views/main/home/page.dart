import 'package:flutter/material.dart';
import 'package:monologue/components/frame.dart';
import 'package:monologue/data_sources.dart';
part 'scaffold.dart';
part 'search.dart';
part 'frame.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Scaffold(
      search: _Search(),
      frame: _Frame(),
    );
  }
}
