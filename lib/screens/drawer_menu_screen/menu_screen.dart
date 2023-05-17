import 'package:flutter/material.dart';
import 'package:shoey/screens/drawer_menu_screen/components/user_profile.dart';
import 'package:shoey/utils/colors.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(16),
      color: accentColor,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserProfile()
          ],
        ),
      ),
    );
  }
}
