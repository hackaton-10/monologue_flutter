part of 'page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.search,
    required this.frame,
  });

  final Widget search;
  final Widget frame;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Divider(
            thickness: 1,
            height: 1,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33.0),
            child: search,
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
