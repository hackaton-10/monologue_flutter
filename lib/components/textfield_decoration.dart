import 'package:flutter/material.dart';
import 'package:monologue/utils/colors.dart';

OutlineInputBorder monologueDecoration() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: MonologueColor.gray300,
      width: 1,
    ),
    gapPadding: 16,
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
  );
}

OutlineInputBorder monologueFocusDecoration() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: MonologueColor.black,
      width: 1,
    ),
    gapPadding: 16,
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
  );
}
