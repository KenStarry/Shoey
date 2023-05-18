import 'package:flutter/material.dart';

class MenuOptionItem extends StatelessWidget {

  final IconData icon;
  final String optionName;

  const MenuOptionItem(
      {super.key, required this.icon, required this.optionName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 16),
        Text(optionName,
          style: Theme.of(context).textTheme.bodyMedium,)
      ],
    );
  }
}