import 'package:flutter/material.dart';

class ColoredBackground extends StatelessWidget {
  const ColoredBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(80),
          bottomRight: Radius.circular(80)
        ),
        color: Theme.of(context).primaryColorDark,
      ),
    );
  }
}
