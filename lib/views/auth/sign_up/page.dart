import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monologue/api/auth_api.dart';
import 'package:monologue/components/signup_textfield.dart';
import 'package:monologue/data_sources.dart';
part 'scaffold.dart';
part 'button.dart';
part 'logo.dart';
part 'textfield.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      logo: const _Logo(),
      id: const _IdTextfield(),
      password: const _PasswordTextfield(),
      checkPassword: const _CheckPasswordTextfield(),
      username: const _UsernameTextfield(),
      button: _Button(
        formkey: formKey,
      ),
      formkey: formKey,
    );
  }
}
