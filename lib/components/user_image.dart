import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:monologue/data_sources.dart';

class MonologueUserImage extends StatefulWidget {
  const MonologueUserImage({super.key});

  @override
  State<MonologueUserImage> createState() => _UserImageState();
}

class _UserImageState extends State<MonologueUserImage> {
  final ImagePicker picker = ImagePicker();

  Future getImgae(ImageSource imagesource) async {
    final XFile? pickedImage = await picker.pickImage(source: imagesource);
    if (pickedImage != null) {
      setState(() {
        image = XFile(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => getImgae(ImageSource.gallery),
      child: Container(
        child: image != null
            ? CircleAvatar(
                radius: 60,
                backgroundImage: FileImage(
                  File(image!.path),
                ),
              )
            : Stack(
                children: [
                  Image.asset(
                    'assets/images/user.png',
                    height: 120,
                    width: 120,
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: SvgPicture.asset('assets/images/edit.svg'),
                  ),
                ],
              ),
      ),
    );
  }
}
