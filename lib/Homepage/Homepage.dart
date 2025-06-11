import 'dart:math';
import 'package:ecommerce/Homepage/Viewpage.dart';
import 'package:ecommerce/Homepage/cart.dart';
import 'package:ecommerce/Homepage/search.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _isSearchVisible = false;
  final TextEditingController _searchController = TextEditingController();

  final List<String> imagePaths = [
    'assets/images/shoe-1.jpg',
    'assets/images/shoe-2.jpg',
    'assets/images/shoe-3.jpg',
    'assets/images/shoe-4.jpeg',
    'assets/images/shoe-5.jpeg',
    'assets/images/shoe-6.jpeg',
    'assets/images/shoe-7.jpeg',
    'assets/images/shoe-8.jpeg',
    'assets/images/shoe-9.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecomm', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        toolbarHeight: 60.5,
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.light, color: Colors.white),
              onPressed: () {
                setState(() {
                  _isSearchVisible = !_isSearchVisible;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.last_page_outlined, color: Colors.white),
              onPressed: () {
                setState(() {
                  _isSearchVisible = !_isSearchVisible;
                });
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 60,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      ['Shoe', 'Dress', 'Electronics', 'Furniture', 'Kitchen', 'Bags', 'Jewellery', 'Watches'].map((
                        category,
                      ) {
                        return InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Text(category, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                        );
                      }).toList(),
                ),
              ),
            ),
          ),
          const Divider(color: Colors.grey, thickness: 1, height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Products', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: 10,
              itemBuilder: (context, index) {
                final randomImage = imagePaths[Random().nextInt(imagePaths.length)];

                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Productviewpage()));
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 6, offset: const Offset(0, 4)),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            randomImage,
                            width: double.infinity,
                            height: 180,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: double.infinity,
                                height: 180,
                                color: Colors.grey[300],
                                child: const Icon(Icons.image_not_supported, size: 40, color: Colors.grey),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Item ${index + 1}',
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'This is a short product description that tells users about the item.',
                          style: TextStyle(fontSize: 13, color: Colors.black54),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '₹100/-',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(label: 'Cart', icon: Image.asset('assets/icon/cart.png', width: 24, height: 24)),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 0,
        onTap: (index) {
          if (index == 2) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Searchpage()));
          }
          if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Cartpage()));
          }
        },
      ),
    );
  }
}
