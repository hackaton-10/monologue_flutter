part of 'page.dart';

// ignore: must_be_immutable
class _BottomNav extends StatelessWidget {
  _BottomNav({
    super.key,
    required this.currentIndex,
  });

  int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) => tabController.animateTo(value),
      currentIndex: currentIndex,
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/frame.svg'), label: ''),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/camera.svg'), label: ''),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/mypage.svg'), label: ''),
      ],
    );
  }
}
