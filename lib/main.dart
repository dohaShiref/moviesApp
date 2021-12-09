import 'package:flutter/material.dart';
import 'package:movies/home_layout/home_layout.dart';
import 'package:movies/theme_app/themeApp.dart';

import 'home_layout/movie_detials.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeApp.themeData,
      routes: {
        homeScreen.routeName:(buildcontext)=>homeScreen(),
        MovieDetials.routeName:(buildContext)=>MovieDetials()
      },
      initialRoute: homeScreen.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}