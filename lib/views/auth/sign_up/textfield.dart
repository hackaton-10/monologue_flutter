part of 'page.dart';

class _IdTextfield extends StatelessWidget {
  const _IdTextfield();

  @override
  Widget build(BuildContext context) {
    return SignupIdTextfield(
      controller: idSignupTextEditingController,
    );
  }
}

class _PasswordTextfield extends StatelessWidget {
  const _PasswordTextfield();

  @override
  Widget build(BuildContext context) {
    return SignupPwTextfield(
      controller: pwSignupTextEditingController,
    );
  }
}

class _CheckPasswordTextfield extends StatelessWidget {
  const _CheckPasswordTextfield();

  @override
  Widget build(BuildContext context) {
    return CheckPwTextfield(
      controller: checkPwSignupTextEditingController,
    );
  }
}

class _UsernameTextfield extends StatelessWidget {
  const _UsernameTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return NickNameTextfield(
      controller: usernameSignupTextEditingController,
    );
  }
}
