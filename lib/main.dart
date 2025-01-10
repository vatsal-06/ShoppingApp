import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart_provider.dart';
import 'package:shop_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
        child: MaterialApp(
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
          home: Provider(create: (context) => 'Hello!', child: const HomePage()),
        ),
    );
  }
}
