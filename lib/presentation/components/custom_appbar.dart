import 'package:blog_app/core/constants/colors.dart';
import 'package:blog_app/core/constants/fontfamily.dart';
import 'package:blog_app/core/utils/scaling.dart';
import 'package:blog_app/core/utils/text_lineheight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: scaleWidth(18, context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         
             
              
              Column(
          crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello Netizen,',
                      style: GoogleFonts.getFont(
                        fontFamily1,
                          fontSize: scaleHeight(15, context),
                          color: black1,
                          fontWeight: FontWeight.w300,
                          height: lineHeight(22.4, 15))),

                          SizedBox(height: scaleHeight(0.2, context),),
                          
                          Text('Welcome back !',
                      style: GoogleFonts.getFont(
                        fontFamily1,
                          fontSize: scaleHeight(18, context),
                          color: black1,
                          fontWeight: FontWeight.w700,
                          height: lineHeight(22.4, 18))),
                ],
              ),
          
        


        Row(
          children: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(
                Icons.search,
                size: scaleWidth(24, context),
              )),

              IconButton(
              onPressed: (){
                Navigator.pushNamed(context, '/bookmark');
              }, 
              icon: Icon(
                Icons.bookmark,
                size: scaleWidth(24, context),
              ))
          ],
        )           
        
        ],
      ),
    );
  }
}
