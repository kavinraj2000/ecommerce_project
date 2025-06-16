import 'package:ecommerce/Homepage/cart.dart';
import 'package:ecommerce/app/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.black,
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5))],
      ),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(Icons.home, 0),
          _buildNavItem(Icons.search, 1),
          _buildNavItem(Icons.shopping_cart_outlined, 2),
          _buildNavItem(Icons.messenger_outline, 3),
          _buildNavItem(Icons.account_circle_outlined, 4),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    bool isSelected = _selectedIndex == index;
    return InkWell(
      onTap: () {
        setState(() {
          if (_selectedIndex == 2) {
            context.pushNamed(RouteNames.cartpage);
          } else {
            _selectedIndex = index;
          }
        });
      },
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isSelected ? Colors.white.withOpacity(0.2) : Colors.transparent,
        ),
        child: Icon(icon, color: isSelected ? Colors.white : Colors.white70, size: isSelected ? 28 : 24),
      ),
    );
  }
}
