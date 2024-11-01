import 'package:flutter/material.dart';
import 'package:monologue/data_sources.dart';

class MonologueFrame extends StatefulWidget {
  const MonologueFrame({
    super.key,
    required this.frameName,
    required this.onTap,
    required this.image,
  });

  final String frameName;
  final VoidCallback onTap;
  final String? image;

  @override
  State<MonologueFrame> createState() => _MonologueFrameState();
}

class _MonologueFrameState extends State<MonologueFrame> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  image == null
                      ? Image.network('https://monologue-bucket.s3.ap-northeast-2.amazonaws.com/FRAME/f62db0f2-907e-41fb-a095-f33993c8434b-')
                      : Container(
                          height: 160,
                          decoration: const BoxDecoration(
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                        ),
                  Text(
                    widget.frameName,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
