part of 'page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.frame,
  });

  final Widget frame;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MonologueTopbar(),
      body: Column(
        children: [
          const Divider(
            thickness: 1,
            height: 1,
          ),
          const SizedBox(
            height: 20,
          ),
          frame,
        ],
      ),
    );
  }
}
