import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:shoey/screens/cart_screen.dart';
import 'package:shoey/screens/core/components.dart';
import 'package:shoey/screens/favorites_screen.dart';
import 'package:shoey/screens/home_screen/home_screen.dart';
import 'package:shoey/screens/onboarding/onboarding_screen.dart';
import 'package:shoey/screens/settings_screen.dart';
import 'package:shoey/utils/colors.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Icon> _icons;
  late final List<Widget> _pages;

  var _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    _icons = const [
      Icon(
        Icons.home,
        color: Colors.black54,
        key: Key("home_screen_icon"),
      ),
      Icon(
        Icons.shopping_cart,
        color: Colors.black54,
        key: Key("cart_screen_icon"),
      ),
      Icon(
        Icons.favorite_border,
        color: Colors.black54,
        key: Key("favorite_screen_icon"),
      ),
      Icon(
        Icons.settings,
        color: Colors.black54,
        key: Key("settings_screen_icon"),
      ),
    ];

    _pages = [
      HomeScreen(),
      CartScreen(),
      FavoritesScreen(),
      SettingsScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        value: const SystemUiOverlayStyle(
            systemNavigationBarColor: accentColor,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/lady.jpg"),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(width: 16),
                const Column(
                  children: [
                    Text.rich(TextSpan(
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            color: Colors.black87),
                        children: [
                          TextSpan(
                              text: "Hi, ",
                              style: TextStyle(fontWeight: FontWeight.normal)),
                          TextSpan(
                              text: "Zoey",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ])),
                    Text(
                      "UI designer",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Colors.black54),
                    ),
                  ],
                )
              ],
            ),
            toolbarHeight: 120,
            centerTitle: false,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            // hide the leading icon
            elevation: 0,
            titleSpacing: 0,
            actions: [
              IconButton(
                key: const Key("search_icon"),
                onPressed: () {
                  //  show snackbar
                  ScaffoldMessenger.of(context)
                      .showSnackBar(customSnackbar("Search Icon Clicked"));
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: IndexedStack(
              index: _selectedIndex,
              children: _pages,
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            key: const Key("main_curved_navigation"),
            items: _icons,
            buttonBackgroundColor: accentColor,
            backgroundColor: Colors.white,
            color: accentColor,
            animationDuration: const Duration(milliseconds: 300),
            onTap: (index) {
              //  navigate to page at index
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ));
  }
}
