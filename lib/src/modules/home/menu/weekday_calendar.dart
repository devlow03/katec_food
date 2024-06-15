import 'package:app_ft_katec/src/modules/home/menu/menu_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeekDayCalendar extends StatelessWidget {
  const WeekDayCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(MenuLogic());
    logic.getWeekDays();
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.blue.shade300)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.blue,
                    size: 30,
                  ),
                  Text(
                    "TUẦN",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )
                ],
              ),
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              border: const Border(),
              // borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
              color: Colors.white),
          child: Column(
            children: [
              dayCalendar(logic),
              Text(
                "Thứ ${logic.weekDay.first}, ngày ${logic.day.first} tháng ${logic.month.value} năm ${logic.month.value}",
                style: const TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget dayCalendar(MenuLogic logic) {
    return Obx(() {
      return SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: logic.numDay.value ?? 0,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "T${logic.weekDay[index]}",
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      padding: const EdgeInsets.all(6),
                      decoration: index == 0
                          ? const BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle)
                          : null,
                      child: Text(
                        "${logic.day[index]}",
                        style: TextStyle(
                            color: index == 0 ? Colors.white : Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              width: 30,
            ),
          ));
    });
  }
}
