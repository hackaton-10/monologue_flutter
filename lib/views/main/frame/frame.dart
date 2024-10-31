part of 'page.dart';

class _Frame extends StatelessWidget {
  const _Frame({
    super.key,
    required this.frame,
  });

  final List<FrameModel> frame;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: GridView.builder(
          itemCount: frame.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 24,
            mainAxisSpacing: 12,
            crossAxisCount: 2,
            childAspectRatio: childAspectRatio,
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
