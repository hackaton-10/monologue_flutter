import 'package:flutter/material.dart';
import 'package:monologue/components/frame.dart';
import 'package:monologue/data_sources.dart';
import 'package:monologue/utils/colors.dart';
import 'package:monologue/views/main/camera/add_image/add_image.dart';

class ChoiceFramePage extends StatelessWidget {
  const ChoiceFramePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
            alignment: Alignment.centerLeft,
            child: const Text(
              '프레임 선택',
              style: TextStyle(
                color: MonologueColor.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33.0),
            child: TextField(
              controller: searchHomeTextEditingController,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                hintText: '검색할 프레임을 입력해주세요',
                prefixIcon: Icon(Icons.search),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: GridView.builder(
                itemCount: localFrame.length + 1,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 12,
                  crossAxisCount: 2,
                  childAspectRatio: childAspectRatio,
                ),
                itemBuilder: (context, index) => index == 0
                    ? MonologueFrame(
                        frameName: 'AI Frame',
                        image: 'assets/images/ai.png',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builder) => const AddImagePage(),
                            ),
                          );
                        },
                      )
                    : MonologueFrame(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builder) => const AddImagePage(),
                            ),
                          );
                        },
                        frameName: localFrame[index - 1].title,
                        image: localFrame[index - 1].imageUrl,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
