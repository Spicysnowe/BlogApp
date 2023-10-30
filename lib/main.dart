import 'package:blog_app/app_routes.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    //  MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (context) => CategoryProvider()),
    //   ],
      // child:
       MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.routes,
      // ),
    );
  }
}
