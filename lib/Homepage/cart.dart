import 'package:ecommerce/Homepage/Homepage.dart';
import 'package:ecommerce/Homepage/search.dart';
import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecomm', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        toolbarHeight: 60.5,
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/car.png', height: 200),
                    const SizedBox(height: 10),
                    const Text('No items in your cart', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.amber,
        currentIndex: 2, // This is the Search page
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: 'Home'),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: SizedBox(height: 24, width: 24, child: Image.asset('assets/icon/cart.png')),
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black), label: 'Search'),
          const BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black), label: 'Profile'),
        ],
        onTap: (index) {
          if (index == 2) return;

          switch (index) {
            case 0:
              // Navigate to HomePage (Replace with your real HomePage widget)
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const Homepage()), // Replace
              );
              break;
            case 1:
              // Navigate to CartPage (Replace with your real CartPage widget)
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const Cartpage()), // Replace
              );
              break;
            case 2:
              // Navigate to ProfilePage (Replace with your real ProfilePage widget)
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const Searchpage()), // Replace
              );
              break;
          }
        },
      ),
    );
  }
}
