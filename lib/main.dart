import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shoey/screens/core/provider/theme_provider_dir/my_theme.dart';
import 'package:shoey/screens/detail_screen/detail_screen.dart';
import 'package:shoey/screens/home_screen/models/shoe_model.dart';
import 'package:shoey/screens/home_screen/provider/shoe_card_provider.dart';
import 'package:shoey/screens/main_screen.dart';
import 'package:shoey/screens/onboarding/onboarding_screen.dart';

void main() => runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ShoeCardProvider())],
      child: MaterialApp(
        home: DetailScreen(
          shoeModel: ShoeModel(
              image: "", price: 0, shoeName: "Nikey", isFavourite: true),
        ),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: MyTheme.lightTheme,
        darkTheme: MyTheme.darkTheme,
      ),
    ));
