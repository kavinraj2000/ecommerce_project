import 'package:ecommerce/common/widget/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsMobileviewDetails extends StatefulWidget {
  const ProductsMobileviewDetails({super.key});

  @override
  State<ProductsMobileviewDetails> createState() => _ProductsMobileviewDetailsState();
}

class _ProductsMobileviewDetailsState extends State<ProductsMobileviewDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Bottombar(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: InkWell(onTap: () {}, child: Icon(Icons.arrow_back_ios_new_outlined))),
                  Text('Product Details', style: GoogleFonts.quicksand(fontSize: 18, fontWeight: FontWeight.bold)),
                  InkWell(onTap: () {}, child: Icon(Icons.more_horiz_outlined)),
                ],
              ),
            ),
            SizedBox(height: 10),

            Column(
              children: [
                Image.asset('assets/images/ProductsMobileview/sofa-4.jpeg', height: 450, width: double.infinity),
                Text('Sofa', style: GoogleFonts.quicksand(fontSize: 18, fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. ',
                    style: GoogleFonts.quicksand(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$250', style: GoogleFonts.quicksand(fontSize: 30, fontWeight: FontWeight.bold)),
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Add to Cart',
                          style: GoogleFonts.quicksand(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
