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
      color: Colors.blue,
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
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
          )

        )
      ),

      // color: Colors.blue,
      home: IndexPage(),
    );
  }
}


