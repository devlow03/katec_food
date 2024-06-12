import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_logic.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final logic = Get.put(HomeLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Container(
          padding: EdgeInsets.all(5),
          color: Colors.white,
          child: Text("Logo trường",style: TextStyle(color: Colors.black,fontSize: 14),),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
        ],
        // bottom: PreferredSize(
        //   preferredSize: const Size.fromHeight(100),
        //   child:
        // ),

        
      ),
      body:ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/banner.jpeg'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
