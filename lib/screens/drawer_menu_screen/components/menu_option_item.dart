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
        Icon(icon, color: Colors.black54),
        const SizedBox(width: 16),
        Text(optionName,
          style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.black87
          ),)
      ],
    );
  }
}