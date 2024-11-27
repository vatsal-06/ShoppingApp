import 'package:flutter/material.dart';
import 'package:shop_app/home_page.dart';
import 'package:shop_app/product_details_page.dart';
import 'package:shop_app/global_variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 28,),
          titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
          titleSmall: TextStyle(fontSize: 14,)
        ).apply(
          fontFamily: 'Lato',
        ),
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(254, 206, 1, 1),
          primary: const Color.fromRGBO(254, 206, 1, 1),
          ),
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16),
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: ProductDetailsPage(product: products[0],),
    );
  }
}
