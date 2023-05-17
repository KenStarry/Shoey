import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoey/screens/main_screen.dart';
import 'package:shoey/screens/onboarding/onboarding_screen.dart';
import 'package:shoey/utils/colors.dart';

void main() => runApp(MaterialApp(
  home: MainScreen(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
      primarySwatch: Colors.deepOrange,
  ),
));