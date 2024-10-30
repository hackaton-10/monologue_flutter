part of 'page.dart';

class _ThirdButton extends StatelessWidget {
  const _ThirdButton({super.key});
  @override
  Widget build(BuildContext context) {
    return MonologueButtons(
      text1: '프로필 수정',
      text2: '로그아웃',
      onTap1: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => EditUserPage(),
          ),
        );
      },
      onTap2: () {
        prefs.remove('accessToken');
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (builder) => SignInPage()),
          (predicate) => false,
        );
      },
    );
  }
}
