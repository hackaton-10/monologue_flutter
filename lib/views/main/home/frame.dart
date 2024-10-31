part of 'page.dart';

class _Frame extends StatelessWidget {
  const _Frame({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: GridView.builder(
          itemCount: localFrame.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 24,
            mainAxisSpacing: 12,
            crossAxisCount: 2,
            childAspectRatio: childAspectRatio,
          ),
          itemBuilder: (context, index) => MonologueFrame(
            onTap: () {},
            frameName: localFrame[index].title,
            image: localFrame[index].imageUrl,
          ),
        ),
      ),
    );
  }
}
