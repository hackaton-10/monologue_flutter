part of 'page.dart';

class _FourthButton extends StatelessWidget {
  const _FourthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MonologueButton(
      text: '회원 탈퇴',
      onTap: () {
        UserApi().deleteUser();
        prefs.remove('accessToken');
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (builder) => SignInPage()),
          (predicate) => false,
        );
      },
      color: MonologueColor.red,
    );
  }
}
