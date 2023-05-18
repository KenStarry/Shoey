import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shoey/screens/cart_screen/cart_screen.dart';
import 'package:shoey/screens/favorites_screen/favorites_screen.dart';
import 'package:shoey/screens/home_screen/home_screen.dart';
import 'package:shoey/screens/main_screen.dart';
import 'package:shoey/screens/settings_screen/settings_screen.dart';

void main() {
  //  testing the main screen
  Widget createMainScreen() {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
    );
  }

  group("App Bar Tests", () {
    group("Visibility Tests", () {
      testWidgets("User Avatar is visible", (widgetTester) async {
        //  pumping the mainscreen
        await widgetTester.pumpWidget(createMainScreen());

        var userAvatar = find.byType(CircleAvatar);
        expect(userAvatar, findsOneWidget);
      });

      testWidgets("Title Shoey is visible", (widgetTester) async {
        //  we specify the screen that we want to test (pumpWidget - creates the widget to be used in the test)
        await widgetTester.pumpWidget(createMainScreen());
        expect(find.text("Hey, Zoey"), findsOneWidget,
            reason: "There must be a title witht the name Zoey");
      });

      testWidgets("Search Icon is visible", (widgetTester) async {
        await widgetTester.pumpWidget(createMainScreen());

        var searchIcon = find.byKey(const Key("search_icon"));
        expect(searchIcon, findsOneWidget,
            reason: "Should find exactly one widget");
      });

      // testWidgets("Snackbar shows up properly", (widgetTester) async {
      //
      //   await widgetTester.pumpWidget(createMainScreen());
      //
      //   var customSnackbar = find.byType(SnackBar);
      //   expect(customSnackbar, findsOneWidget);
      // });
    });

    group("Functionality Tests", () {
      //  TODO : Printing to Logcat test
      // testWidgets("Clicking search icon prints on the logcat",
      //     (widgetTester) async {
      //   await widgetTester.pumpWidget(createMainScreen());
      //
      //   var searchIcon = find.byKey(const Key("search_icon"));
      //   //  tap the search icon
      //   await widgetTester.tap(searchIcon);
      //   //  refresh widget
      //   await widgetTester.pump();
      //   // expect(print, prints("Search clicked"));
      // });

      testWidgets("Clicking search icon shows Snackbar", (widgetTester) async {
        await widgetTester.pumpWidget(createMainScreen());

        var searchIcon = find.byKey(const Key("search_icon"));
        var snackbar = find.byType(SnackBar);
        //  tap the search icon
        await widgetTester.tap(searchIcon);
        //  refresh widget
        await widgetTester.pump();
        expect(snackbar, findsOneWidget);
      });
    });
  });

  group("Bottom Navigation Bar Tests", () {
    group("Visibility Tests", () {
      testWidgets("The CurvedNavigationBar is displayed properly",
          (widgetTester) async {
        await widgetTester.pumpWidget(createMainScreen());

        var curvedNavigation = find.byType(CurvedNavigationBar);
        var myCurvedNavigationByKey =
            find.byKey(const Key("main_curved_navigation"));
        expect(myCurvedNavigationByKey, findsNWidgets(1));
      });
    });

    group("Functionality Tests", () {

      var cartWidget = IndexedStack(
        index: 1,
        children: [
          HomeScreen(),
          CartScreen(),
          FavoritesScreen(),
          SettingsScreen(),
        ],
      );

      //  TODO : Cart Icon test
      testWidgets("Clicking Cart Icon Should display Home Screen",
          (widgetTester) async {
        await widgetTester.pumpWidget(createMainScreen());

        var myCartScreen = find.byWidget(cartWidget);
        var homeIcon = find.byKey(const Key("cart_screen_icon"));

        await widgetTester.tap(homeIcon);
        await widgetTester.pump();

        //  expect to find the home screen
        expect(myCartScreen, findsOneWidget,
            reason: "Should Open Cart Screen upon clicking.");
      });
    });
  });

  group("Main Screen", () {});
}
