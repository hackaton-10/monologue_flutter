import 'package:flutter/material.dart';
import 'package:monologue/utils/colors.dart';

// ignore: must_be_immutable
class MonologueButton extends StatelessWidget {
  MonologueButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color,
  });
  final String text;
  final VoidCallback onTap;
  Color? color = MonologueColor.red;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        height: 47,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: MonologueColor.gray200,
            width: 1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ),
    );
  }
}

class MonologueButtons extends StatelessWidget {
  const MonologueButtons({
    super.key,
    required this.text1,
    required this.text2,
    required this.onTap1,
    required this.onTap2,
  });
  final String text1;
  final String text2;
  final VoidCallback onTap1;
  final VoidCallback onTap2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            height: 47,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: MonologueColor.gray200,
                width: 1,
              ),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(8),
              ),
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              text1,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTap2,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            height: 47,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: MonologueColor.gray200,
                width: 1,
              ),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(8),
              ),
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              text2,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
