import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:shoey/screens/cart_screen.dart';
import 'package:shoey/screens/core/components.dart';
import 'package:shoey/screens/favorites_screen.dart';
import 'package:shoey/screens/home_screen/home_screen.dart';
import 'package:shoey/screens/drawer_menu_screen/menu_screen.dart';
import 'package:shoey/screens/my_icon.dart';
import 'package:shoey/screens/onboarding/onboarding_screen.dart';
import 'package:shoey/screens/settings_screen.dart';

import 'core/utils/colors.dart';

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
        key: Key("home_screen_icon"),
      ),
      Icon(
        Icons.shopping_cart,
        key: Key("cart_screen_icon"),
      ),
      Icon(
        Icons.favorite_border,
        key: Key("favorite_screen_icon"),
      ),
      Icon(
        Icons.settings,
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
    return ZoomDrawer(
      mainScreen: AnnotatedRegion(
          value: SystemUiOverlayStyle(
              systemNavigationBarColor: Theme.of(context).primaryColorDark,
              systemNavigationBarIconBrightness: Brightness.dark,
              statusBarColor: Theme.of(context).scaffoldBackgroundColor,
              statusBarIconBrightness: Brightness.dark),
          child: Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            appBar: AppBar(
              iconTheme: Theme.of(context).iconTheme,
              title: Text.rich(TextSpan(children: [
                TextSpan(
                    text: "Hi, ", style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "Zoey", style: Theme.of(context).textTheme.bodyLarge)
              ])),
              leading: const DrawerIcon(),
              toolbarHeight: 100,
              centerTitle: true,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
              buttonBackgroundColor: Theme.of(context).primaryColorDark,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              color: Theme.of(context).primaryColorDark,
              animationDuration: const Duration(milliseconds: 300),
              onTap: (index) {
                //  navigate to page at index
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          )),
      menuScreen: MenuScreen(),
      menuBackgroundColor: Theme.of(context).primaryColorDark,
      drawerShadowsBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
      showShadow: true,
      mainScreenTapClose: true,
      openCurve: const Interval(0.0, 1.0, curve: Curves.ease),
      closeCurve: const Interval(0.0, 1.0, curve: Curves.ease),
      duration: const Duration(milliseconds: 300),
    );
  }
}
