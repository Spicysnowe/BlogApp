import 'package:blog_app/core/constants/colors.dart';
import 'package:blog_app/core/constants/fontfamily.dart';
import 'package:blog_app/core/constants/radius.dart';
import 'package:blog_app/core/utils/scaling.dart';
import 'package:blog_app/core/utils/text_lineheight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Blogcard extends StatelessWidget {
  const Blogcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, '/blog');
      },
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
              Expanded(
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                    Flexible(
                     flex: 9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Read 10 min',
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.getFont(fontFamily1,
                                              fontSize: scaleHeight(14, context),
                                              color: black1,
                                              fontWeight: FontWeight.w300,
                                              height: lineHeight(22.4, 14))),
                                

                          SizedBox(height: scaleHeight(2, context),),


                          Text('London: The ideal city for tourists',
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.getFont(fontFamily1,
                                              fontSize: scaleHeight(16, context),
                                              color: black1,
                                              fontWeight: FontWeight.w500,
                                              height: lineHeight(22.4, 16))),
                        ],
                      ),
              
                    ),
              
                    Flexible(
                     flex: 1,
                     child: InkWell(child: Icon(Icons.bookmark_border_rounded),))
              
                 ],
                    ),
              )
          ],
        ),
      ),
    );
  }
}