part of 'page.dart';

class _IdTextfield extends StatelessWidget {
  const _IdTextfield();

  @override
  Widget build(BuildContext context) {
    return SigninIdTextfield(
      controller: idSigninTextEditingController,
    );
  }
}

class _PasswordTextfield extends StatelessWidget {
  const _PasswordTextfield();

  @override
  Widget build(BuildContext context) {
    return SigninPwTextfield(
      controller: pwSigninTextEditingController,
    );
  }
}
