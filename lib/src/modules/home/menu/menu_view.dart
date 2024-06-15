import 'package:app_ft_katec/src/modules/home/menu/expansition_list.dart';
import 'package:app_ft_katec/src/modules/home/menu/menu_logic.dart';
import 'package:app_ft_katec/src/modules/home/menu/weekday_calendar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(MenuLogic());
    logic.getWeekDays();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
        title: const Text("Thực đơn"),
      ),
      body: ListView(
        children: [
          const WeekDayCalendar(),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Thực đơn tháng 6 - Tuần 4:",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return ExpansionList();
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 5,
            ),
          )
        ],
      ),

      // bottomNavigationBar:const AppNavigationBar(),
    );
  }
}
