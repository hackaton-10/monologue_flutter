part of 'page.dart';

class _Textfield extends StatelessWidget {
  const _Textfield({super.key});

  @override
  Widget build(BuildContext context) {
    return NickNameTextfield(
      controller: usernameSignupTextEditingController,
    );
  }
}
