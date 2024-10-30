part of 'page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    super.key,
    required this.profile,
    required this.firstButton,
    required this.secondButton,
    required this.thirdButton,
    required this.fourthButton,
  });

  final Widget profile;
  final Widget firstButton;
  final Widget secondButton;
  final Widget thirdButton;
  final Widget fourthButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Divider(
            thickness: 1,
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                profile,
                const SizedBox(
                  height: 40,
                ),
                firstButton,
                const SizedBox(
                  height: 16,
                ),
                secondButton,
                const SizedBox(
                  height: 16,
                ),
                thirdButton,
                const SizedBox(
                  height: 16,
                ),
                fourthButton
              ],
            ),
          ),
        ],
      ),
    );
  }
}
