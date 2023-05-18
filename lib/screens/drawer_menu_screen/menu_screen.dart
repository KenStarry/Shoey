import 'package:flutter/material.dart';
import 'package:shoey/screens/drawer_menu_screen/components/menu_options.dart';
import 'package:shoey/screens/drawer_menu_screen/components/menu_darkmode.dart';
import 'package:shoey/screens/drawer_menu_screen/components/user_profile.dart';

import '../core/utils/colors.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
        left: 16,
        right: 8
      ),
      color: Theme.of(context).primaryColorDark,
      child: const SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserProfile(),
            MenuOptions(),
            MenuDarkMode()
          ],
        ),
      ),
    );
  }
}
