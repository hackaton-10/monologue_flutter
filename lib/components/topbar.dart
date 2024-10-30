import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MonologueTopbar extends StatelessWidget implements PreferredSizeWidget {
  const MonologueTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.height;
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      title: SvgPicture.asset(
        'assets/images/Monologue.svg',
        height: width / 30,
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
