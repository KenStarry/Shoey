import 'package:flutter/cupertino.dart';

import '../components/category_section/shoe_card.dart';

class ShoeCardProvider extends ChangeNotifier {
  bool isFavouriteClicked;
  List<String> favouriteCardsImages = [];

  ShoeCardProvider({this.isFavouriteClicked = false});

  void toggleFavourite(bool isClicked, String cardImage) {
    isFavouriteClicked = isClicked;

    //  add item to list of favourite items
    if (isClicked) {
      favouriteCardsImages.add(cardImage);
    } else {
      //  check if the list contains the item and remove it
      if (favouriteCardsImages.contains(cardImage)) {
        favouriteCardsImages.remove(cardImage);
      }
    }

    notifyListeners();
  }
}
