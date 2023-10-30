import 'package:blog_app/core/constants/colors.dart';
import 'package:blog_app/core/constants/fontfamily.dart';
import 'package:blog_app/core/constants/radius.dart';
import 'package:blog_app/core/utils/scaling.dart';
import 'package:blog_app/core/utils/text_lineheight.dart';
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

class Blogcard extends StatelessWidget {
  const Blogcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: scaleHeight(125, context),
        width: double.infinity,
        margin: EdgeInsets.only(bottom: scaleHeight(20, context),),
        padding: EdgeInsets.symmetric(
          horizontal: scaleWidth(15, context),
          vertical: scaleWidth(15, context)
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(rad2_8),
          color: grey2
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(rad2_8),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1612988952181-c995680479a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YWVzdGhldGljJTIwYmxhY2slMjBhbmQlMjB3aGl0ZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
                    height: double.infinity,
                   fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(width: scaleWidth(15, context),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //  Expanded(
                      //   flex: 9,
                      //    child: Text('The Flutter DevTools debugger and profiler on Redmi Note 9 Pro Max is available',
                      //    maxLines: 2,
                      //    softWrap: true,
                      //    overflow: TextOverflow.ellipsis,
                      //                    style: GoogleFonts.getFont(fontFamily1,
                      //                        fontSize: scaleHeight(14, context),
                      //                        color: black1,
                      //                        fontWeight: FontWeight.w400,
                      //                        height: lineHeight(22.4, 14))),

                      //  ),

                       InkWell(child: Icon(Icons.bookmark_add_rounded),)

                    ],
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}