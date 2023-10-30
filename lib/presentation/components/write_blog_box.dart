import 'package:blog_app/core/constants/colors.dart';
import 'package:blog_app/core/constants/fontfamily.dart';
import 'package:blog_app/core/constants/radius.dart';
import 'package:blog_app/core/utils/scaling.dart';
import 'package:blog_app/core/utils/text_lineheight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WriteBlogBox extends StatelessWidget {
  const WriteBlogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: scaleHeight(75, context),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: scaleWidth(18, context)),
     padding: EdgeInsets.symmetric(
        horizontal: scaleWidth(20, context),
        // vertical: scaleHeight(8, context)
        ),
        alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(rad5_2),
        border: Border.all(
          color: black1
        )
      ),

      child: TextField(
          
          textAlignVertical: TextAlignVertical.center,
          style: GoogleFonts.getFont(
                    fontFamily1,
                      fontSize: scaleHeight(16, context),
                      color: black1,
                      fontWeight: FontWeight.w300,
                      height: lineHeight(22.4, 16)),

          decoration: InputDecoration(
            icon: const Icon(Icons.edit),
            hintText: "Write some blog ",
            hintStyle: GoogleFonts.getFont(
                    fontFamily1,
                      fontSize: scaleHeight(16, context),
                      color: black1,
                      fontWeight: FontWeight.w400,
                      height: lineHeight(22.4, 16)),
             border: InputBorder.none,
            
          ),
        ),
    );
  }
}