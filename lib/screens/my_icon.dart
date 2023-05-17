import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shoey/utils/colors.dart';

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          ZoomDrawer.of(context)!.toggle();
        },
        icon: const Icon(
          Icons.menu,
          color: Colors.black54,
        ));
  }
}
