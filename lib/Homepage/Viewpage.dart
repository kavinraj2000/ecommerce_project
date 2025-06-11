import 'package:flutter/material.dart';

class Productviewpage extends StatelessWidget {
  const Productviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecomm', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        toolbarHeight: 60.5,
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),

            child: SizedBox(
              width: 350,
              child: SearchBar(
                hintText: 'Search for what you want...',
                textStyle: WidgetStateProperty.all(const TextStyle(color: Colors.white)),
                leading: const Icon(Icons.search, color: Colors.white),
                trailing: const [Icon(Icons.mic, color: Colors.white)],
                constraints: const BoxConstraints(maxHeight: 40),

                elevation: WidgetStateProperty.all(0),
                backgroundColor: WidgetStateProperty.all(Colors.transparent),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Row(
              children: [
                Image.asset('assets/images/shoe-1.jpg', height: 200, width: 200),
                Column(
                  children: [
                    Text('Nike Air Force 1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('\$100', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Size', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Color', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Quantity', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Description', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
