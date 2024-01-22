import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/config/routes/routes.dart';
import 'package:marche_social_app/config/theme/light_theme.dart';
import 'package:marche_social_app/view/screens/home/home.dart';
import 'package:marche_social_app/view/screens/home/product/series_product_overview.dart';

import 'view/screens/home/discover/discover.dart';
import 'view/screens/home/product/review/series_product_review1.dart';
import 'view/screens/home/product/review/series_product_review2.dart';
import 'view/screens/home/product/series_product_specs.dart';
import 'view/screens/search/search.dart';

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
      // initialRoute: AppLinks.splash_screen,
      // getPages: AppRoutes.pages,
      //home: HomeSeriesProductOverViewScreen(),
      //home: HomeScreen(),
      //home: HomeDiscoverScreen(),
      // home: HomeSeriesProductSpecsScreen(),
      //home: HomeSeriesProductReview1Screen(),
      // home:HomeSeriesProductReview2Screen() ,
      home: SearchScreen(),
    );
  }
}
