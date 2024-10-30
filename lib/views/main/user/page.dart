import 'package:flutter/material.dart';
import 'package:monologue/api/user_api.dart';
import 'package:monologue/components/button.dart';
import 'package:monologue/data_sources.dart';
import 'package:monologue/utils/colors.dart';
import 'package:monologue/views/edit_user/page.dart';
import 'package:monologue/views/main/frame/page.dart';
import 'package:monologue/views/auth/sign_in/page.dart';
part 'scaffold.dart';
part 'profile.dart';
part 'first_button.dart';
part 'second_button.dart';
part 'fourth_button.dart';
part 'third_button.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      profile: _Profile(
        image: user!.imageUrl,
        name: user!.name,
        id: user!.id,
      ),
      firstButton: const _FirstButton(),
      secondButton: const _SecondButton(),
      thirdButton: const _ThirdButton(),
      fourthButton: const _FourthButton(),
    );
  }
}
