import 'package:blog_app/presentation/views/blog.dart';
import 'package:blog_app/presentation/views/bookmarks.dart';
import 'package:blog_app/presentation/views/home.dart';
import 'package:flutter/material.dart';


class AppRoutes{
  static const String start = '/';
  static const String blog = '/blog';
  static const String bookmark = '/bookmark';

  static Map<String, Widget Function(BuildContext)> routes = {
    start: (context) => const  Home(),
    blog: (context) => const Blog(),
    bookmark: (context) => const BookMark()

  };
}