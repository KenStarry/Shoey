import 'package:flutter/material.dart';
import 'package:shoey/utils/colors.dart';

class ShoeCard extends StatelessWidget {
  final String image;
  final int price;
  final String shoeName;

  //  pass afunction with no return type
  final Function()? onClick;

  const ShoeCard(
      {super.key,
      required this.image,
      required this.price,
      required this.shoeName,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: accentColorLight),
        child: Column(
          children: [
            //  image
            Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Image.asset(image, width: double.infinity, height: double.infinity,),
                  ),
                )),

            //  image
            Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shoeName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: "Poppins",
                            color: Colors.black87),
                      ),
                      Text(
                        "Ksh. $price",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: "Poppins",
                            color: Colors.black54),
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
