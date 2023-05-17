import 'package:flutter/material.dart';
import 'package:shoey/screens/main_screen.dart';

class GetStartedImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child:
              Image.asset("assets/images/shoe1.jpg", width: 180, height: 220),
        ),
        const SizedBox(width: 16),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Get Started",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  decoration: TextDecoration.none),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () {
                //  navigate to new screen and pop back stack
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MainScreen()));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.deepOrange.shade300)),
              child: const Icon(Icons.arrow_right_alt),
            )
          ],
        ))
      ],
    );
  }
}
