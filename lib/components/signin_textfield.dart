import 'package:flutter/material.dart';
import 'package:monologue/components/textfield_decoration.dart';
import 'package:monologue/data_sources.dart';

class SigninIdTextfield extends StatefulWidget {
  const SigninIdTextfield({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  State<SigninIdTextfield> createState() => _SigninIdTextfieldState();
}

class _SigninIdTextfieldState extends State<SigninIdTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      controller: widget.controller,
      decoration: InputDecoration(
        border: monologueDecoration(),
        focusedBorder: monologueFocusDecoration(),
        hintText: '아이디',
      ),
      validator: (value) {
        if (value == null || value == '') {
          return '아이디를 입력하세요';
        }
        if (login == false) {
          return '';
        }
        return null;
      },
    );
  }
}

// ignore: must_be_immutable
class SigninPwTextfield extends StatefulWidget {
  const SigninPwTextfield({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  State<SigninPwTextfield> createState() => _SigninPwTextfieldState();
}

class _SigninPwTextfieldState extends State<SigninPwTextfield> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      obscureText: obscureText,
      obscuringCharacter: '*',
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: '비밀번호',
        suffixIcon: IconButton(
          onPressed: () => setState(
            () {
              if (obscureText == true) {
                obscureText = false;
              } else {
                obscureText = true;
              }
            },
          ),
          icon: Icon(obscureText ? Icons.visibility_off_outlined : Icons.visibility),
        ),
        border: monologueDecoration(),
        focusedBorder: monologueFocusDecoration(),
      ),
      validator: (value) {
        if (value == null || value == '') {
          return '비밀번호를 입력하세요';
        }
        if (login == false) {
          return '아이디 또는 비밀번호가 일치하지 않습니다';
        }
        return null;
      },
    );
  }
}
