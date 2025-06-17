import 'package:ecommerce/app/app.dart';
import 'package:ecommerce/product/bloc/product_bloc.dart';
import 'package:ecommerce/product/repo/prouductrepository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc(ProductRepository())..add(ProductInitialEvent()),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: const App()),
    );
  }
}
