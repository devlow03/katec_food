import 'package:get/get.dart';


class MenuLogic extends GetxController {
  @override
  void onReady() {
    super.onReady();
    getWeekDays();
  }

  RxList weekDay = RxList();
  RxList day = RxList();
  Rxn<int>numDay = Rxn(5);
  Rxn<int>month = Rxn();
  Rxn<int> year = Rxn();
  Rxn<bool>isExpanded = Rxn(false);
  void getWeekDays() {
    final date = DateTime.now();
    DateTime startOfWeek = date.subtract(Duration(days: date.weekday - 1));
    month.value = date.month;
    year.value = date.year;
    for (int i = 0; i < 5; i++) {
      DateTime currentDay = startOfWeek.add(Duration(days: i));
      weekDay.add(i + 2);
      day.add(currentDay.day);
      print("T${weekDay[i]}:${day[i]}");
    }
  }
}
