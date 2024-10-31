import 'dart:io';
import 'package:flutter/material.dart';
import 'package:monologue/data_sources.dart';
import 'package:monologue/utils/colors.dart';
import 'package:monologue/views/main/camera/prompot/prompt_image_page.dart';

class AddImagePage extends StatefulWidget {
  const AddImagePage({super.key});

  @override
  State<AddImagePage> createState() => _AddImagePageState();
}

class _AddImagePageState extends State<AddImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  'assets/images/frame2.png', // Make sure to add your image in the assets folder
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
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              '선택 (${selectedImage.length}/4)',
              style: const TextStyle(
                color: MonologueColor.black,
                fontSize: 21,
              ),
            ),
          ),
          const Divider(),
          SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    // Check if the image is already selected and if there is space to select more
                    if (!selectedImage.contains(imagePath[index]) && selectedImage.length < 4) {
                      selectedImage.add(imagePath[index]);
                    } else if (selectedImage.contains(imagePath[index])) {
                      // If the image is already selected, remove it
                      selectedImage.remove(imagePath[index]);
                    }
                  });
                },
                child: Stack(
                  children: [
                    Image.file(
                      File(imagePath[index]),
                      height: 70,
                      width: 70,
                    ),
                    // Display a check mark or overlay if the image is selected
                    if (selectedImage.contains(imagePath[index]))
                      const Positioned(
                        top: 0,
                        right: 0,
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                      ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 14,
              ),
              itemCount: imagePath.length,
            ),
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
                        builder: (builder) => const PromptImagePage(),
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
