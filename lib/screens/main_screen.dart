import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:shoey/screens/cart_screen/cart_screen.dart';
import 'package:shoey/screens/core/components.dart';
import 'package:shoey/screens/favorites_screen/favorites_screen.dart';
import 'package:shoey/screens/home_screen/home_screen.dart';
import 'package:shoey/screens/drawer_menu_screen/menu_screen.dart';
import 'package:shoey/screens/home_screen/components/drawer_icon.dart';
import 'package:shoey/screens/onboarding/onboarding_screen.dart';
import 'package:shoey/screens/settings_screen/settings_screen.dart';

import 'core/utils/colors.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<GButton> _bottomBarTabs;
  late final List<Widget> _pages;

  var _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    _bottomBarTabs = [
      GButton(
        key: Key("home_screen_icon"),
        icon: Icons.home,
        haptic: false,
        text: "Home",
        onPressed: () {},
      ),
      GButton(
        key: Key("cart_screen_icon"),
        icon: Icons.shopping_cart,
        haptic: false,
        text: "My Cart",
        onPressed: () {},
      ),
      GButton(
        key: Key("favorite_screen_icon"),
        icon: Icons.favorite_border,
        haptic: false,
        text: "Favourites",
        onPressed: () {},
      ),
      GButton(
        key: Key("settings_screen_icon"),
        icon: Icons.settings,
        haptic: false,
        text: "Settings",
        onPressed: () {},
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: IndexedStack(
                index: _selectedIndex,
                children: _pages,
              ),
            ),
            bottomNavigationBar: Container(
              color: Theme.of(context).primaryColorDark,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: GNav(
                  tabs: _bottomBarTabs,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  backgroundColor: Theme.of(context).primaryColorDark,
                  color: Theme.of(context).iconTheme.color,
                  activeColor: Theme.of(context).iconTheme.color,
                  tabBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  padding: const EdgeInsets.all(16),
                  gap: 8,
                ),
              ),
            ),
          )),
      menuScreen: MenuScreen(),
      menuBackgroundColor: Theme.of(context).primaryColorDark,
      drawerShadowsBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
      showShadow: true,
      mainScreenTapClose: true,
      openCurve: const Interval(0.0, 1.0, curve: Curves.ease),
      closeCurve: const Interval(0.0, 1.0, curve: Curves.ease),
      duration: const Duration(milliseconds: 250),
    );
  }
}
