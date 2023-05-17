import 'package:flutter/material.dart';
import 'package:shoey/screens/home_screen/components/category_section/choose_category.dart';
import 'package:shoey/screens/home_screen/components/collections_section.dart';
import 'package:shoey/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  heading
            const Text(
              "New Collections",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontFamily: "Poppins",
                  fontSize: 20),
            ),

            //  collections
            CollectionsSection(),

            const SizedBox(height: 16),

            //  choose category
            ChooseCategory(),
          ],
        ),
      ),
    );
  }
}
