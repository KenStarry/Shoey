import 'package:flutter/material.dart';
import '../../../core/utils/colors.dart';

class BrandIconCard extends StatelessWidget {
  final String image;

  //  pass afunction with no return type
  final Function()? onClick;

  const BrandIconCard({super.key, required this.image, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 65,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: Theme.of(context).primaryColorDark),
        child: Image.asset(
          image,
          color: Theme.of(context).iconTheme.color,
          fit: BoxFit.cover,
        ));
  }
}
