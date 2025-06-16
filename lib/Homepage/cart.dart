import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('My Cart', style: GoogleFonts.quicksand(fontSize: 26, fontWeight: FontWeight.bold)),
                      const Icon(Icons.more_horiz, size: 28),
                    ],
                  ),
                ),

                // Search Bar
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: SearchBar(
                    hintText: 'Search',
                    leading: const Icon(Icons.search, color: Colors.black38),
                    trailing: [InkWell(onTap: () {}, child: const Icon(Icons.tune_outlined, color: Colors.black38))],
                    constraints: const BoxConstraints(minHeight: 40),
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: const BorderSide(color: Colors.black38),
                      ),
                    ),
                  ),
                ),

                // Cart Items
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        // Product Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/ProductsMobileview/chair-1.jpeg',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),

                        // Product Info
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Chair', style: GoogleFonts.quicksand(fontSize: 18, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 6),
                              Text('\$100', style: GoogleFonts.quicksand(fontSize: 16, fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),

                        // Quantity Buttons
                        Row(
                          children: [
                            IconButton(onPressed: () {}, icon: const Icon(Icons.remove_circle_outline)),
                            Text('1', style: GoogleFonts.quicksand(fontSize: 16, fontWeight: FontWeight.bold)),
                            IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle_outline)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Total & Checkout Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total: \$100', style: GoogleFonts.quicksand(fontSize: 20, fontWeight: FontWeight.bold)),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      child: Text('Checkout', style: GoogleFonts.quicksand(color: Colors.white, fontSize: 16)),
                    ),
                  ],
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
