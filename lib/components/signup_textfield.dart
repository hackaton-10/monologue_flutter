import 'package:flutter/material.dart';
import 'package:monologue/components/textfield_decoration.dart';
import 'package:monologue/data_sources.dart';

class SignupIdTextfield extends StatelessWidget {
  const SignupIdTextfield({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      controller: controller,
      decoration: InputDecoration(
        border: monologueDecoration(),
        focusedBorder: monologueFocusDecoration(),
        hintText: '아이디 (5 ~ 20자)',
      ),
      validator: (value) {
        final userIdRegex = RegExp(r'^[a-zA-Z0-9]+$');
        if (value == null || value.isEmpty) {
          return '아이디를 입력하세요';
        }
        if (value.length < 5 || value.length > 20) {
          return '아이디는 5 ~ 20자 사이여야 합니다';
        }
        if (!userIdRegex.hasMatch(value)) {
          return '아이디는 영어와 숫자만 사용할 수 있습니다';
        }
        return null;
      },
    );
  }
}

// ignore: must_be_immutable
class SignupPwTextfield extends StatefulWidget {
  const SignupPwTextfield({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  State<SignupPwTextfield> createState() => _SignupPwTextfieldState();
}

class _SignupPwTextfieldState extends State<SignupPwTextfield> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      obscureText: obscureText,
      obscuringCharacter: '*',
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: '비밀번호 (8~20자)',
        suffixIcon: IconButton(
          onPressed: () => setState(() {
            obscureText = !obscureText;
          }),
          icon: Icon(obscureText ? Icons.visibility_off_outlined : Icons.visibility),
        ),
        border: monologueDecoration(),
        focusedBorder: monologueFocusDecoration(),
      ),
      validator: (value) {
        final passwordRegex = RegExp(r'^[a-zA-Z0-9!@#\$%^&*()_+]+$');

        if (value == null || value.isEmpty) {
          return '비밀번호를 입력하세요';
        }
        if (value.length < 8 || value.length > 20) {
          return '비밀번호는 8 ~ 20자 사이여야 합니다';
        }
        if (!passwordRegex.hasMatch(value)) {
          return '비밀번호는 영어, 숫자 또는 특수문자만 사용할 수 있습니다';
        }
        return null;
      },
    );
  }
}

// ignore: must_be_immutable
class CheckPwTextfield extends StatefulWidget {
  const CheckPwTextfield({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  State<CheckPwTextfield> createState() => _CheckPwTextfieldState();
}

class _CheckPwTextfieldState extends State<CheckPwTextfield> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      obscureText: obscureText,
      obscuringCharacter: '*',
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: '비밀번호 확인',
        suffixIcon: IconButton(
          onPressed: () => setState(() {
            obscureText = !obscureText;
          }),
          icon: Icon(obscureText ? Icons.visibility_off_outlined : Icons.visibility),
        ),
        border: monologueDecoration(),
        focusedBorder: monologueFocusDecoration(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '비밀번호를 입력하세요';
        }
        if (value != pwSignupTextEditingController.text) {
          return '비밀번호가 일치하지 않습니다';
        }
        return null;
      },
    );
  }
}

class NickNameTextfield extends StatelessWidget {
  const NickNameTextfield({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      controller: controller,
      decoration: InputDecoration(
        hintText: '사용하실 닉네임을 입력해주세요',
        border: monologueDecoration(),
        focusedBorder: monologueFocusDecoration(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '사용하실 닉네임을 입력해주세요';
        }
        return null;
      },
    );
  }
}
