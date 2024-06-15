import 'package:app_ft_katec/src/modules/home/menu/weekday_calendar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimeTablePage extends StatelessWidget {
  const TimeTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      const Color(0xffFF8080),
      Colors.blueAccent,
      Colors.greenAccent,
      Colors.amber
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
        title: const Text("Thời khóa biểu\nhoạt động học tập"),
      ),
      body: ListView(
        children: [
          const WeekDayCalendar(),
          const SizedBox(
            height: 15,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text(
                    index == 0 ? "SÁNG" : "TRƯA",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, ind) {
                      return item(colors[ind]);
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      height: 5,
                    ),
                  )
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              height: 10,
            ),
          )
        ],
      ),
    );
  }

  Widget item(Color color) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      tileColor: color,
      leading: const Text(
        "07:00 - 08:00",
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
      title: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text("ĐÓN TRẺ"),
      ),
      titleTextStyle: const TextStyle(
          fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
    );
  }
}
