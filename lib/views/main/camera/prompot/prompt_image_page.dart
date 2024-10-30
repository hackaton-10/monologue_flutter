import 'dart:io';

import 'package:flutter/material.dart';
import 'package:monologue/components/textfield_decoration.dart';
import 'package:monologue/data_sources.dart';
import 'package:monologue/views/main/camera/loading/loading_page.dart';

class PromptImagePage extends StatelessWidget {
  const PromptImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  'assets/images/frame.png', // Make sure to add your image in the assets folder
                ),
                Positioned.fill(
                  child: GridView.builder(
                    padding: const EdgeInsets.all(10),
                    physics: const NeverScrollableScrollPhysics(), // Disable scrolling
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Two columns
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
          TextField(
            cursorColor: Colors.black,
            controller: promptTextEditingController,
            decoration: InputDecoration(
              hintText: '사용하실 닉네임을 입력해주세요',
              border: monologueDecoration(),
              focusedBorder: monologueFocusDecoration(),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => const LoadingPage(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.check,
                    size: 32,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
