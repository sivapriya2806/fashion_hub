import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigation extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavigation({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          color: Colors.grey[900],
          activeColor: Colors.grey[300],
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.white60,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          gap: 10,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            const GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            const GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            )
          ]),
    );
  }
}
