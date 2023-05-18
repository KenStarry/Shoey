import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> with TickerProviderStateMixin {
  //  controller to control our lottie animation
  late AnimationController _lottieController;

  @override
  void initState() {
    super.initState();

    _lottieController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _lottieController.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        //  do something after animation is complete
      }
    });
  }

  @override
  void dispose() {
    _lottieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          children: [
            Lottie.asset("assets/lottie/empty_screen.json",
                animate: true,
                reverse: false,
                controller: _lottieController, onLoaded: (composition) {
              _lottieController.duration = composition.duration;
              _lottieController.forward();
            }),
            Text(
              "Nothing to see here...",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }
}
