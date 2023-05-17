import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shoey/screens/home_screen/provider/shoe_card_provider.dart';
import 'package:shoey/screens/main_screen.dart';
import 'package:shoey/screens/onboarding/onboarding_screen.dart';
import 'package:shoey/utils/colors.dart';

void main() => runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ShoeCardProvider())],
      child: MaterialApp(
        home: MainScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
      ),
    ));
