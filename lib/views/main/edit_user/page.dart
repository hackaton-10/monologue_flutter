import 'package:flutter/material.dart';
import 'package:monologue/api/user_api.dart';
import 'package:monologue/components/signup_textfield.dart';
import 'package:monologue/components/topbar.dart';
import 'package:monologue/components/user_image.dart';
import 'package:monologue/data_sources.dart';
part 'scaffold.dart';
part 'button.dart';
part 'textfield.dart';

class EditUserPage extends StatelessWidget {
  EditUserPage({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      textfield: const _Textfield(),
      button: _Button(formkey: formKey),
      formKey: formKey,
    );
  }
}
