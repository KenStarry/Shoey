import 'package:flutter/material.dart';

class NewLifeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "Start a ",
                    softWrap: true,
                    selectionColor: Colors.deepOrange.shade600,
                    style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 48,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                        decoration: TextDecoration.none),
                  ),
                )),
            Expanded(child: Align(
              alignment: AlignmentDirectional.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/shoe3.jpg",
                  width: 100,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ))
          ],
        ),

        Text(
          "new life in the world with us ",
          softWrap: true,
          selectionColor: Colors.deepOrange.shade600,
          style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 48,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
              decoration: TextDecoration.none,
              height: 2),
        ),
      ],
    );
  }
}
