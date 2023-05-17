import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoey/screens/onboarding/components/get_started.dart';
import 'package:shoey/screens/onboarding/components/new_life_text.dart';
import 'package:shoey/utils/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        value: const SystemUiOverlayStyle(
            systemNavigationBarColor: accentColor,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: accentColor,
            statusBarIconBrightness: Brightness.dark),
        child: Scaffold(
          body: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: accentColor,
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NewLifeText(),
                    const SizedBox(
                      height: 48,
                    ),
                    GetStartedImage()
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
