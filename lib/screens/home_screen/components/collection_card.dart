import 'package:flutter/material.dart';

class CollectionCard extends StatelessWidget {
  late final String image;
  late final int price;

  CollectionCard({required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomStart,
          child: Opacity(
            opacity: 0.7,
            child: Container(
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.black),
              child: Text(
                "Ksh. $price",
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
