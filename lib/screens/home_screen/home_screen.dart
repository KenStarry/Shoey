import 'package:flutter/material.dart';
import 'package:shoey/screens/home_screen/components/category_section/choose_category.dart';
import 'package:shoey/screens/home_screen/components/collections_section.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  heading
            Text(
              "New Collections",
              style: Theme.of(context).textTheme.titleSmall,
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
