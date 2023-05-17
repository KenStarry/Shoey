import 'package:flutter/material.dart';
import 'package:shoey/utils/colors.dart';

class BrandIconCard extends StatelessWidget {
  final IconData icon;
  //  pass afunction with no return type
  final Function()? onClick;

  const BrandIconCard({super.key, required this.icon, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: accentColorLight
        ),
        child: Icon(icon, color: Colors.black54));
  }
}
