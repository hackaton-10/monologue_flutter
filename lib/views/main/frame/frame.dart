part of 'page.dart';

class _Frame extends StatelessWidget {
  const _Frame({
    super.key,
    required this.heart,
  });

  final bool heart;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: GridView.builder(
          itemCount: 5,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 24,
            mainAxisSpacing: 12,
            crossAxisCount: 2,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) => MonologueFrame(
            onTap: () {},
            frameName: frame[index].title,
            image: frame[index].imageUrl,
          ),
        ),
      ),
    );
  }
}
