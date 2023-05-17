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
          image: "assets/images/shoe5.png",
          price: 3500,
          shoeName: "Nike Airmax",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe11.png",
          price: 1500,
          shoeName: "Nike Airforce",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe7.png",
          price: 700,
          shoeName: "Jordans",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe8.png",
          price: 4999,
          shoeName: "Addidas Pro",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe9.png",
          price: 5000,
          shoeName: "Canvas",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe10.png",
          price: 1300,
          shoeName: "Nike Pro Air",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe11.png",
          price: 8900,
          shoeName: "Nike Spring",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe12.png",
          price: 900,
          shoeName: "Nike Airforce",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe13.png",
          price: 800,
          shoeName: "Nike Premium",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe14.png",
          price: 7000,
          shoeName: "Addidas 500",
          onClick: () {}),
      ShoeCard(
          image: "assets/images/shoe7.png",
          price: 8500,
          shoeName: "Nikey",
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
