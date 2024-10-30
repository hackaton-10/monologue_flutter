import 'package:flutter/material.dart';
import 'package:monologue/utils/colors.dart';
import 'package:monologue/views/main/page.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/frame.png',
              height: 450,
              width: 318,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
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
                      '스토리 저장',
                      style: TextStyle(
                        color: MonologueColor.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {},
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
              ],
            ),
            const SizedBox(
              height: 30,
            ),
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
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
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
