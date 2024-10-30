import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monologue/api/auth_api.dart';
import 'package:monologue/api/user_api.dart';
import 'package:monologue/components/signin_textfield.dart';
import 'package:monologue/data_sources.dart';
import 'package:monologue/utils/colors.dart';
import 'package:monologue/views/main/page.dart';
import 'package:monologue/views/auth/sign_up/page.dart';
part 'scaffold.dart';
part 'button.dart';
part 'logo.dart';
part 'textfield.dart';

// ignore: must_be_immutable
class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      logo: const _Logo(),
      id: const _IdTextfield(),
      password: const _PasswordTextfield(),
      button: _Button(formkey: formKey),
      signupButton: const _SignUpButton(),
      formkey: formKey,
    );
  }
}
