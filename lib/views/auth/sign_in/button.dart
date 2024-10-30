part of 'page.dart';

// ignore: must_be_immutable
class _Button extends StatefulWidget {
  const _Button({
    required this.formkey,
  });
  final GlobalKey<FormState> formkey;

  @override
  State<_Button> createState() => _ButtonState();
}

class _ButtonState extends State<_Button> {
  Future fetchApi() async {
    login = await AuthApi().signIn();
    user = await UserApi().userProfile();
    usernameSignupTextEditingController.text = user!.name;
  }

  void onTap() async {
    await fetchApi();
    // ignore: unnecessary_null_comparison
    if (widget.formkey.currentState!.validate()) {
      prefs.setString('accessToken', accessToken!);
      idSigninTextEditingController.clear();
      pwSigninTextEditingController.clear();
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (builder) => MainPage(),
        ),
        (predicate) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 60,
        decoration: const BoxDecoration(
          // ignore: unnecessary_null_comparison
          color: MonologueColor.black,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: const Text(
          '로그인',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  const _SignUpButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '아직 회원이 아니라면, ',
            style: TextStyle(color: MonologueColor.gray500),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (builder) => SignUpPage(),
              ),
            ),
            child: const Text(
              '회원가입',
              style: TextStyle(
                color: MonologueColor.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
