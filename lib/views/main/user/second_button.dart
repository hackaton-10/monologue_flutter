part of 'page.dart';

class _SecondButton extends StatelessWidget {
  const _SecondButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MonologueButton(
      text: '내가 만든 프레임',
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const FramePage(),
          ),
        );
      },
    );
  }
}
