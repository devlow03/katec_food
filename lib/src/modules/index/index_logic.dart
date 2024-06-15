import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_ft_katec/src/modules/history/history_view.dart';
import 'package:app_ft_katec/src/modules/home/home_view.dart';
import 'package:app_ft_katec/src/modules/profile/profile_view.dart';

class IndexLogic extends GetxController {
  Rxn<int> tabIndex = Rxn();
  List<Map<String, dynamic>> screens = [
    {"label": "Trang chủ", "icon": Icons.home_filled, "screen": HomePage()},
    {"label": "Lịch sử", "icon": Icons.history, "screen": HistoryPage()},
    {"label": "", "screen": ""},
    {
      "label": "Nghỉ học",
      "icon": Icons.edit_calendar,
      "screen": const Text("1")
    },
    {"label": "Cá nhân", "icon": Icons.person, "screen": ProfilePage()},
  ];
  selectTab(int index) {
    tabIndex.value = index;
  }
}
