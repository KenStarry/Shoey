import 'package:flutter/material.dart';
import 'package:shoey/screens/core/utils/colors.dart';
import 'package:shoey/screens/home_screen/models/shoe_model.dart';

class ShoeHeader extends StatelessWidget {
  final ShoeModel shoeModel;

  const ShoeHeader({Key? key, required this.shoeModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      width: double.infinity,
      height: 350,
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                // shoe title
                Text(
                  "Nike Airforce",
                  style: Theme.of(context).textTheme.titleLarge,
                  overflow: TextOverflow.visible,
                  softWrap: true,
                ),
                SizedBox(
                  height: 12,
                ),
                //  price
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Price : ",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.5),
                        fontWeight: Theme.of(context).textTheme.bodyMedium?.fontWeight,
                        fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
                        fontFamily: Theme.of(context).textTheme.bodyMedium?.fontFamily
                      )),
                  TextSpan(
                      text: "Ksh. 3,350",
                      style: Theme.of(context).textTheme.titleMedium),
                ]))
              ],
            ),

            //  shoe image
            Expanded(
              child: Container(
                child: Image.asset(
                  "assets/images/shoe7.png",
                  fit: BoxFit.cover,
                  width: 250,
                  height: 250,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
