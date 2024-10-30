part of 'page.dart';

class _Button extends StatefulWidget {
  const _Button({
    required this.formkey,
  });
  final GlobalKey<FormState> formkey;

  @override
  State<_Button> createState() => _ButtonState();
}

class _ButtonState extends State<_Button> {
  fetchApi() async {
    await AuthApi().signUp();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.formkey.currentState!.validate()) {
          idSignupTextEditingController.clear();
          pwSignupTextEditingController.clear();
          fetchApi();
          Navigator.pop(context);
        }
      },
      child: Container(
        alignment: Alignment.center,
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: const Text(
          '회원가입',
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
