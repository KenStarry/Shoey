import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:shoey/screens/detail_screen/components/shoe_header.dart';

import '../../home_screen/models/shoe_model.dart';

class DetailContent extends StatefulWidget {
  final ShoeModel shoeModel;

  const DetailContent({Key? key, required this.shoeModel}) : super(key: key);

  @override
  State<DetailContent> createState() => _DetailContentState();
}

class _DetailContentState extends State<DetailContent> {
  @override
  Widget build(BuildContext context) {

    //  check instance of dark mode
    var brightness = MediaQuery.of(context).platformBrightness;

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
            statusBarColor: Theme.of(context).primaryColorDark,
            statusBarIconBrightness: brightness == Brightness.light ? Brightness.dark : Brightness.light
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Theme.of(context).iconTheme.color,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.deepOrangeAccent,
              ))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //  header
            ShoeHeader(shoeModel: widget.shoeModel)
          ],
        ),
      ),
    );
  }
}










































