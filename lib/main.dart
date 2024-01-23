import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/config/routes/routes.dart';
import 'package:marche_social_app/config/theme/light_theme.dart';
import 'package:marche_social_app/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:marche_social_app/view/screens/checkout_firstime/guest_details.dart';
import 'package:marche_social_app/view/screens/home/home.dart';
import 'package:marche_social_app/view/screens/result/result.dart';
import 'view/screens/search/search.dart';
import 'view/screens/search/search_bar.dart';

void main() {
  runApp(MyApp());
}

//DO NOT REMOVE Unless you find their usage.
String dummyImg =
    'https://images.unsplash.com/photo-1558507652-2d9626c4e67a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'TITLE',
      theme: lightTheme,
      themeMode: ThemeMode.light,
      //initialRoute: AppLinks.splash_screen,
      // getPages: AppRoutes.pages,

      //home: SearchScreen(),
      //home: SerachBarScreen(),
      home: GuestDetails(),
    );
  }
}
