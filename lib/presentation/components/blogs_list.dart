import 'package:blog_app/core/constants/colors.dart';
import 'package:blog_app/core/constants/fontfamily.dart';
import 'package:blog_app/core/utils/scaling.dart';
import 'package:blog_app/core/utils/text_lineheight.dart';
import 'package:blog_app/presentation/components/blogcard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogList extends StatelessWidget {
  const BlogList({super.key});

  @override
  Widget build(BuildContext context) {

    int totalItems = 10;

           
            int rows = totalItems;

            double containerHeight = (147 * rows).toDouble();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: scaleWidth(18, context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Topics to follow', //TODO change the text here
                  style: GoogleFonts.getFont(fontFamily1,
                      fontSize: scaleHeight(16, context),
                      color: black1,
                      fontWeight: FontWeight.w500,
                      height: lineHeight(22.4, 16))),

        SizedBox(
            height: scaleHeight(24, context),
          ),

          SizedBox(
            height:scaleHeight(containerHeight, context),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Blogcard();
              }
            ),
          )
        ],
      )
    );
  }
}

