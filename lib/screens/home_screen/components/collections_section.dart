import 'package:flutter/material.dart';
import 'package:shoey/screens/home_screen/components/collection_card.dart';

import '../../core/utils/colors.dart';

class CollectionsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      margin: const EdgeInsets.symmetric(vertical: 24),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
                child: CollectionCard(
                    image: "assets/images/shoe3.jpg", price: 1500),
              )),
          const SizedBox(width: 16),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: double.infinity,
                        child: CollectionCard(
                            image: "assets/images/shoe1.jpg", price: 750),
                      )),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: double.infinity,
                            child: CollectionCard(
                              image: "assets/images/shoe2.jpg",
                              price: 450,
                            ),
                          )),
                      const SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          print("Arrow tapped");
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: accentColor),
                          child: const Icon(
                            Icons.arrow_right_alt,
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
