import 'package:blog_app/core/utils/scaling.dart';
import 'package:blog_app/presentation/components/blogs_list.dart';
import 'package:blog_app/presentation/components/custom_appbar.dart';
import 'package:blog_app/presentation/components/write_blog_box.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: scaleHeight(32, context)),
        const CustomAppBar(),
        SizedBox(height: scaleHeight(24, context)),
        const WriteBlogBox(),
        SizedBox(height: scaleHeight(20, context)),
        const BlogList()
        ],
      ),
    );
  }
}