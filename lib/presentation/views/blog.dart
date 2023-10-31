import 'dart:ui';

import 'package:blog_app/core/constants/colors.dart';
import 'package:blog_app/core/constants/fontfamily.dart';
import 'package:blog_app/core/constants/radius.dart';
import 'package:blog_app/core/constants/strings.dart';
import 'package:blog_app/core/utils/scaling.dart';
import 'package:blog_app/core/utils/text_lineheight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(children: [
          Image.network(
            'https://images.unsplash.com/photo-1612988952181-c995680479a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YWVzdGhldGljJTIwYmxhY2slMjBhbmQlMjB3aGl0ZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
            height: scaleHeight(867, context)/2,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
      
          backButton(context),
          scroll()
         
      
          
        ]),
      ),
    );
  }

  

  Padding backButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: scaleHeight(18, context),
        left: scaleWidth(18, context)),
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: scaleWidth(55, context),
          width: scaleWidth(55, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10) ,
            child: Container(
          height: scaleWidth(55, context),
          width: scaleWidth(55, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          
          ),
          child: Icon(Icons.arrow_back_ios,
          size: scaleWidth(20, context),
          color: Colors.white,),
          ),
          )
        ),
      ),
    );
  }

DraggableScrollableSheet scroll() {
  return DraggableScrollableSheet(
    initialChildSize: 0.6,
    maxChildSize: 0.8,
    minChildSize: 0.6,
    builder: (context, scrollController) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: scaleWidth(18, context)),
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius:  BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          ),
           color: Colors.white,
        ),

        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                 padding: EdgeInsets.only(
                  top: scaleHeight(10, context)
                 ),
                 child: Center(
                  child: Container(
                    height: scaleHeight(5, context),
                    width: scaleWidth(35, context),
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black12
                   ),
                  ),
                 )
               ),
        
               SizedBox(height: scaleHeight(35, context),),
        
               Text('London: The ideal city for tourists',
                       style: GoogleFonts.getFont(
                         fontFamily1,
                           fontSize: scaleHeight(26, context),
                           color: black1,
                           fontWeight: FontWeight.w700,
                           height: lineHeight(28.4, 26))),
        
                SizedBox(height: scaleHeight(10, context),),
        
                Text('Read: 10 min',
                       style: GoogleFonts.getFont(
                         fontFamily1,
                           fontSize: scaleHeight(14, context),
                           color: black1,
                           fontWeight: FontWeight.w300,
                           height: lineHeight(22.4, 14))),
        
                  SizedBox(height: scaleHeight(20, context),),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                         ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network(
                            'https://c0.wallpaperflare.com/preview/375/152/864/nature-aesthetic-hue-blue.jpg',
                            height: scaleWidth(50, context),
                            width: scaleWidth(50, context),
                            fit: BoxFit.cover,
                            ),
                        ),
        
                        SizedBox(width: scaleWidth(10, context),),
        
                        Text('Anonymous',
                           style: GoogleFonts.getFont(
                             fontFamily1,
                               fontSize: scaleHeight(16, context),
                               color: black1,
                               fontWeight: FontWeight.w500,
                               height: lineHeight(22.4, 16))),
        
                      ],
                    ),
                  
        
                  InkWell(
                    onTap: (){},
                    child: const Icon(Icons.bookmark_border_rounded),
                  ),
        
                  
                  ],
                ),
        
                SizedBox(height: scaleHeight(20, context),),
        
                
                  Text(story,
                       style: GoogleFonts.getFont(
                         fontFamily1,
                           fontSize: scaleHeight(14, context),
                           color: black1,
                           fontWeight: FontWeight.w400,
                           height: lineHeight(24.4, 14))),
                  
                   SizedBox(height: scaleHeight(50, context),),
            ],
          ),
        ),
       
      );
    }
    );
  }


}
