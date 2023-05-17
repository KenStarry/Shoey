import 'package:flutter/material.dart';
import 'package:shoey/screens/home_screen/components/category_section/brand_icon_card.dart';
import 'package:shoey/screens/home_screen/components/category_section/shoe_card.dart';

class ChooseCategory extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChooseCategoryState();
}

class _ChooseCategoryState extends State<ChooseCategory> {
  late final List<Widget> _brandIcons;
  late final List<Widget> _shoeCards;

  @override
  void initState() {
    super.initState();

    _brandIcons = [
      BrandIconCard(
        icon: Icons.bar_chart,
        onClick: () {},
      ),
      const SizedBox(width: 16),
      BrandIconCard(icon: Icons.monetization_on, onClick: () {}),
      const SizedBox(width: 16),
      BrandIconCard(icon: Icons.food_bank, onClick: () {}),
      const SizedBox(width: 16),
      BrandIconCard(icon: Icons.handshake, onClick: () {}),
      const SizedBox(width: 16),
      BrandIconCard(icon: Icons.handshake, onClick: () {}),
      const SizedBox(width: 16),
      BrandIconCard(icon: Icons.handshake, onClick: () {}),
      const SizedBox(width: 16),
      BrandIconCard(icon: Icons.handshake, onClick: () {}),
    ];

    _shoeCards = [
      ShoeCard(
          image: "assets/images/shoe1.jpg",
          price: 15000,
          shoeName: "Nike, Airforce",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe1.jpg",
          price: 15000,
          shoeName: "Nike, Airforce",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe1.jpg",
          price: 15000,
          shoeName: "Nike, Airforce",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe1.jpg",
          price: 15000,
          shoeName: "Nike, Airforce",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe1.jpg",
          price: 15000,
          shoeName: "Nike, Airforce",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe1.jpg",
          price: 15000,
          shoeName: "Nike, Airforce",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe1.jpg",
          price: 15000,
          shoeName: "Nike, Airforce",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe1.jpg",
          price: 15000,
          shoeName: "Nike, Airforce",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe1.jpg",
          price: 15000,
          shoeName: "Nike, Airforce",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe1.jpg",
          price: 15000,
          shoeName: "Nike, Airforce",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe1.jpg",
          price: 15000,
          shoeName: "Nike, Airforce",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe1.jpg",
          price: 15000,
          shoeName: "Nike, Airforce",
          onClick: () {}),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //  header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Choose Category",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontFamily: "Poppins",
                  fontSize: 20),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "See more",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontFamily: "Poppins",
                    fontSize: 14),
              ),
            )
          ],
        ),

        const SizedBox(width: 24),

        //  list of categories
        Container(
          width: double.infinity,
          height: 45,
          margin: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemBuilder: (context, position) => _brandIcons[position],
            itemCount: _brandIcons.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
          ),
        ),

        //  category cards
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, position) => _shoeCards[position],
          itemCount: _shoeCards.length,
          shrinkWrap: true,
          primary: false,
        )
      ],
    );
  }
}
