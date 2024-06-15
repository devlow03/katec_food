import 'dart:ui';

import 'package:app_ft_katec/src/modules/index/index_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          counterStyle: TextStyle(
            color: Colors.black
          )
        ),
        appBarTheme: const AppBarTheme(

          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 30
          ),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          )
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            size: 30
          ),
          unselectedIconTheme: IconThemeData(
            size: 30
          ),
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          unselectedLabelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 12
          ),
          selectedLabelStyle: TextStyle(
            color: Colors.blue,
            fontSize: 11
          ),


        )
      ),

      // color: Colors.blue,
      home: IndexPage(),
    );
  }
}


