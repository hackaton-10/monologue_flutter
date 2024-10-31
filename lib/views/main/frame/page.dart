import 'package:flutter/material.dart';
import 'package:monologue/components/frame.dart';
import 'package:monologue/components/topbar.dart';
import 'package:monologue/data_sources.dart';
import 'package:monologue/models/frame_model.dart';
part 'scaffold.dart';
part 'frame.dart';

class FramePage extends StatelessWidget {
  const FramePage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      frame: _Frame(
        frame: myFrame,
      ),
    );
  }
}
