
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index_logic.dart';

class IndexPage extends StatelessWidget {
  IndexPage({Key? key}) : super(key: key);

  final logic = Get.put(IndexLogic());

  @override
  Widget build(BuildContext context) {
    
    return Obx(() {
      return Scaffold(
        // extendBodyBehindAppBar: false,
        //   extendBody: false,
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.grey.shade100,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                    shape: InputBorder.none,
                    backgroundColor: Colors.grey,
                    isExtended: true,
                    onPressed: () {},
                    child: const Icon(
                      Icons.qr_code_scanner,
                      color: Colors.white,
                      size: 50,
                    )),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Quét mọi QR",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          body: logic.screens[logic.tabIndex.value ?? 0]['screen'],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (tab) => logic.selectTab(tab),
            currentIndex: logic.tabIndex.value ?? 0,
            items: logic.screens.map((item) {
              return BottomNavigationBarItem(
                icon: Icon(item['icon']),
                label: item['label'],
              );
            }).toList(),
          ));
    });
  }
}

