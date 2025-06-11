import 'package:ecommerce/Homepage/Homepage.dart';
import 'package:ecommerce/Homepage/cart.dart';
import 'package:flutter/material.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

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
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: 350,
              height: 50,
              child: SearchBar(
                hintText: 'Search for what you want...',
                textStyle: MaterialStatePropertyAll(TextStyle(color: Colors.white)),
                leading: Icon(Icons.search, color: Colors.white),
                trailing: [Icon(Icons.mic, color: Colors.white)],
                constraints: BoxConstraints(maxHeight: 40),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
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
