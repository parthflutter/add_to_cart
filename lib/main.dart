
import 'package:add_to_cart/screen/cart/view/cart_screen.dart';
import 'package:add_to_cart/screen/home/provider/home_provider.dart';
import 'package:add_to_cart/screen/home/view/home_screen.dart';
import 'package:add_to_cart/screen/product/view/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => home(),
        'home1': (context) => home1(),
        'home2': (context) => home2(),
      },
    ),
    ),
  );
}