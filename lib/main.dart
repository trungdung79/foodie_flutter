import 'package:flutter/material.dart';
import 'package:foodie_flutter/views/cart_page.dart';
import 'package:foodie_flutter/views/home_screen.dart';
import 'package:foodie_flutter/views/login_page.dart';
import 'package:foodie_flutter/views/register_page.dart';
import 'package:foodie_flutter/views/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartPage(),
    );
  }
}
