import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoey/screens/home_screen/components/category_section/brand_icon_card.dart';
import 'package:shoey/screens/home_screen/components/category_section/shoe_card.dart';
import 'package:shoey/screens/home_screen/provider/shoe_card_provider.dart';

class ChooseCategory extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChooseCategoryState();
}

class _ChooseCategoryState extends State<ChooseCategory> {
  late final List<Widget> _brandIcons;

  @override
  void initState() {
    super.initState();

    _brandIcons = [
      BrandIconCard(
        image: "assets/images/puma_logo_pngwing.png",
        onClick: () {},
      ),
      const SizedBox(width: 16),
      BrandIconCard(
        image: "assets/images/jordans_logo_pngwing.png",
        onClick: () {},
      ),
      const SizedBox(width: 16),
      BrandIconCard(
        image: "assets/images/nike_logo_pngwing.png",
        onClick: () {},
      ),
      const SizedBox(width: 16),
      BrandIconCard(
        image: "assets/images/addidas_logo_pngwing.png",
        onClick: () {},
      ),
      const SizedBox(width: 16),
      BrandIconCard(
        image: "assets/images/puma_logo_pngwing.png",
        onClick: () {},
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var shoeCardProvider = Provider.of<ShoeCardProvider>(context);

    bool providerContainsImage(String image) => Provider.of<ShoeCardProvider>(context)
        .favouriteCardsImages
        .contains(image);

    var shoeCards = [
      ShoeCard(
        image: "assets/images/shoe5.png",
        price: 3500,
        shoeName: "Nike Airmax",
        isFavourite: providerContainsImage("assets/images/shoe5.png"),
        onClick: () {},
        onFavouriteClicked: () {
          Provider.of<ShoeCardProvider>(context, listen: false).toggleFavourite(
              !shoeCardProvider.isFavouriteClicked, "assets/images/shoe5.png");
        },
      ),
      ShoeCard(
        image: "assets/images/shoe6.png",
        price: 1500,
        shoeName: "Nike Airforce",
        isFavourite: providerContainsImage("assets/images/shoe6.png"),
        onClick: () {},
        onFavouriteClicked: () {
          Provider.of<ShoeCardProvider>(context, listen: false).toggleFavourite(
              !shoeCardProvider.isFavouriteClicked, "assets/images/shoe6.png");
        },
      ),
      ShoeCard(
        image: "assets/images/shoe7.png",
        price: 700,
        shoeName: "Jordans",
        isFavourite: providerContainsImage("assets/images/shoe7.png"),
        onClick: () {},
        onFavouriteClicked: () {
          Provider.of<ShoeCardProvider>(context, listen: false).toggleFavourite(
              !shoeCardProvider.isFavouriteClicked, "assets/images/shoe7.png");
        },
      ),
      ShoeCard(
        image: "assets/images/shoe8.png",
        price: 4999,
        shoeName: "Addidas Pro",
        isFavourite: providerContainsImage("assets/images/shoe8.png"),
        onClick: () {},
        onFavouriteClicked: () {
          Provider.of<ShoeCardProvider>(context, listen: false).toggleFavourite(
              !shoeCardProvider.isFavouriteClicked, "assets/images/shoe8.png");
        },
      ),
      ShoeCard(
        image: "assets/images/shoe9.png",
        price: 5000,
        shoeName: "Canvas",
        isFavourite: providerContainsImage("assets/images/shoe9.png"),
        onClick: () {},
        onFavouriteClicked: () {
          Provider.of<ShoeCardProvider>(context, listen: false).toggleFavourite(
              !shoeCardProvider.isFavouriteClicked, "assets/images/shoe9.png");
        },
      ),
      ShoeCard(
        image: "assets/images/shoe10.png",
        price: 1300,
        shoeName: "Nike Pro Air",
        isFavourite: providerContainsImage("assets/images/shoe10.png"),
        onClick: () {},
        onFavouriteClicked: () {
          Provider.of<ShoeCardProvider>(context, listen: false).toggleFavourite(
              !shoeCardProvider.isFavouriteClicked, "assets/images/shoe10.png");
        },
      ),
      ShoeCard(
        image: "assets/images/shoe11.png",
        price: 8900,
        shoeName: "Nike Spring",
        isFavourite: providerContainsImage("assets/images/shoe11.png"),
        onClick: () {},
        onFavouriteClicked: () {
          Provider.of<ShoeCardProvider>(context, listen: false).toggleFavourite(
              !shoeCardProvider.isFavouriteClicked, "assets/images/shoe11.png");
        },
      ),
      ShoeCard(
        image: "assets/images/shoe12.png",
        price: 900,
        shoeName: "Nike Airforce",
        isFavourite: providerContainsImage("assets/images/shoe12.png"),
        onClick: () {},
        onFavouriteClicked: () {
          Provider.of<ShoeCardProvider>(context, listen: false).toggleFavourite(
              !shoeCardProvider.isFavouriteClicked, "assets/images/shoe12.png");
        },
      ),
      ShoeCard(
        image: "assets/images/shoe13.png",
        price: 800,
        shoeName: "Nike Premium",
        isFavourite: providerContainsImage("assets/images/shoe13.png"),
        onClick: () {},
        onFavouriteClicked: () {
          Provider.of<ShoeCardProvider>(context, listen: false).toggleFavourite(
              !shoeCardProvider.isFavouriteClicked, "assets/images/shoe13.png");
        },
      ),
    ];

    return Column(
      children: [
        //  header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Choose Category",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    "See more",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const Icon(Icons.arrow_right)
                ],
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
          itemBuilder: (context, position) => shoeCards[position],
          itemCount: shoeCards.length,
          shrinkWrap: true,
          primary: false,
        )
      ],
    );
  }
}
