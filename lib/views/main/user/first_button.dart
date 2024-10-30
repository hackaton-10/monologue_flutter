part of 'page.dart';

class _FirstButton extends StatelessWidget {
  const _FirstButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MonologueButton(
      text: '좋아요한 프레임',
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const FramePage(
              heart: true,
            ),
          ),
        );
      },
    );
  }
}
