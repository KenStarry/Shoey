import 'package:flutter/material.dart';

class MenuDarkMode extends StatelessWidget {
  const MenuDarkMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: const Column(
        children: [
          //  trial period remaining
          Row(
            children: [
              Icon(Icons.light_mode),
              SizedBox(width: 16),
              Text("Light Mode")
            ],
          )
        ],
      ),
    );
  }
}