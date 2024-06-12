
import 'package:app_ft_katec/src/modules/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index_logic.dart';

class IndexPage extends StatelessWidget {
  IndexPage({Key? key}) : super(key: key);

  final logic = Get.put(IndexLogic());

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> screens = [
      {
        "label": "Trang chủ",
        "icon": Icons.home_filled,
        "screen": HomePage()
      },
      {"label": "Lịch sử", "icon": Icons.history, "screen": const Text("1")},
      {
        "label": "Quét mọi QR",
        "icon": Icons.qr_code_scanner,
        "screen": const Text("1")
      },
      {
        "label": "Nghỉ học",
        "icon": Icons.edit_calendar,
        "screen": const Text("1")
      },
      {"label": "Cá nhân", "icon": Icons.person, "screen": const Text("1")},
    ];
    return Obx(() {
      return Scaffold(
          body: screens[logic.tabIndex.value ?? 0]['screen'],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 35,
            selectedLabelStyle: const TextStyle(
                color: Colors.blue,
                // fontSize: 0

            ),

            // selectedFontSize: 0,
            // elevation: 0,
            // showSelectedLabels: false,
            onTap: (tab) => logic.selectTab(tab),
            currentIndex: logic.tabIndex.value ?? 0,
            items: screens.map((item) {
              return BottomNavigationBarItem(
                icon: Icon(item['icon']),
                label: item['label'],
              );
            }).toList(),
          ));
    })
    ;
  }
}
