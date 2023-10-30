import 'package:blog_app/presentation/views/home.dart';
import 'package:flutter/material.dart';


class AppRoutes{
  static const String start = '/';
  // static const String productDetails = '/productDetails';

  static Map<String, Widget Function(BuildContext)> routes = {
    start: (context) => const  Home(),
    // productDetails: (context) => const ProductDetails()
  };
}