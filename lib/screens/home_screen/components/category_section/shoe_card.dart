import 'package:flutter/material.dart';
import 'package:shoey/utils/colors.dart';

class ShoeCard extends StatelessWidget {
  final String image;
  final int price;
  final String shoeName;

  //  pass afunction with no return type
  final Function()? onClick;

  const ShoeCard(
      {super.key,
      required this.image,
      required this.price,
      required this.shoeName,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: accentColor),
        child: Text("Hey"));
  }
}
