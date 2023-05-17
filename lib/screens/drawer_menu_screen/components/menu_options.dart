import 'package:flutter/material.dart';
import 'package:shoey/screens/drawer_menu_screen/components/menu_option_item.dart';

class MenuOptions extends StatelessWidget {
  const MenuOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white70,
      ),
      child: const  Column(
        children: [
          MenuOptionItem(icon: Icons.wallet, optionName: "My Wallet"),
          SizedBox(height: 24),
          MenuOptionItem(icon: Icons.delivery_dining, optionName: "Track Order"),
          SizedBox(height: 24),
          MenuOptionItem(icon: Icons.favorite, optionName: "Donate"),
          SizedBox(height: 24),
          MenuOptionItem(icon: Icons.monetization_on, optionName: "Refunds"),
        ],
      ),
    );
  }
}
