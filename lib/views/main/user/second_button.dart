part of 'page.dart';

class _SecondButton extends StatelessWidget {
  const _SecondButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MonologueButtons(
      text1: '내가 만든 프레임',
      text2: '촬영한 사진',
      onTap1: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const FramePage(
              heart: false,
            ),
          ),
        );
      },
      onTap2: () {},
    );
  }
}
