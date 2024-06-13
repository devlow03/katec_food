import 'package:app_ft_katec/src/modules/home/grid_item.dart';
import 'package:app_ft_katec/src/modules/home/news.dart';
import 'package:app_ft_katec/src/modules/home/row_item.dart';
import 'package:flutter/cupertino.dart';
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
            padding: const EdgeInsets.all(5),
            color: Colors.white,
            child: const Text(
              "Logo trường",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
          ],

        ),
        body: ListView(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                    child: Image.asset(
                  "assets/images/banner.jpeg",
                      fit: BoxFit.cover,

                )),
                const Positioned(
                    top: 190, left: 15, right: 15, child: RowItem())
              ],
            ),

            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*.2),
              child: GridItem(),
            ),
            const SizedBox(height: 10,),
            const News(),
            const SizedBox(height: 20,),
          ],
        ));
  }


}


