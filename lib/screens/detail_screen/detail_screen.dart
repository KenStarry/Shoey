import 'package:flutter/material.dart';
import 'package:shoey/screens/detail_screen/components/colored_background.dart';
import 'package:shoey/screens/detail_screen/components/detail_content.dart';
import 'package:shoey/screens/home_screen/models/shoe_model.dart';

class DetailScreen extends StatefulWidget {
  final ShoeModel shoeModel;

  const DetailScreen({Key? key, required this.shoeModel}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        children: [
          //  background colored image
          const ColoredBackground(),
          //  content
          DetailContent(shoeModel: widget.shoeModel,)
        ],
      ),
    );
  }
}
