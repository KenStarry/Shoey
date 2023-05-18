import 'package:flutter/material.dart';


class FavoritesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Text("Favorites Screen"),
    );
  }
}