import 'package:flutter/material.dart';

import '../utils/colors.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Text("Favorites Screen"),
    );
  }
}