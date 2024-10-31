import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:monologue/data_sources.dart';
import 'package:monologue/utils/colors.dart';
import 'package:monologue/views/main/page.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  Future<void> saveImageToGallery(BuildContext context, String imagePath) async {
    final result = await ImageGallerySaver.saveFile(imagePath);
    if (result['isSuccess']) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('이미지가 갤러리에 저장되었습니다')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('이미지 저장에 실패했습니다')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
                top: 60,
                right: 12,
                bottom: 20,
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/frame.png',
                  ),
                  Positioned.fill(
                    child: GridView.builder(
                      padding: const EdgeInsets.all(10),
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.81,
                      ),
                      itemCount: selectedImage.length,
                      itemBuilder: (context, index) {
                        return Image.file(
                          File(selectedImage[index]),
                          height: 210,
                          width: 170,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                if (selectedImage.isNotEmpty) {
                  saveImageToGallery(context, selectedImage[0]); // Saving first image as an example
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: 52,
                width: 160,
                decoration: const BoxDecoration(
                  color: MonologueColor.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: const Text(
                  '이미지 저장',
                  style: TextStyle(
                    color: MonologueColor.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (builder) => MainPage()),
                  (predicate) => false,
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: 147,
                height: 37,
                decoration: BoxDecoration(
                  color: MonologueColor.white,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: const Text(
                  '메인으로 돌아가기',
                  style: TextStyle(
                    color: MonologueColor.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
