import 'package:app_ft_katec/src/modules/home/food_report/food_report_view.dart';
import 'package:app_ft_katec/src/modules/home/vaccination_history/vanccination_history_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {
        "icon": Icons.bookmark_add,
        "label": "Đăng kí\nmôn năng khiếu",
        "color": Colors.green,
        "page": const Text("1")
      },
      {
        "icon": Icons.monitor_heart,
        "label": "Sổ theo dõi\nsức khỏe",
        "color": Colors.red,
        "page": const Text("1")
      },
      {"icon": Icons.book, "label": "Sổ bé ngoan", "page": const Text("1"),'color':Colors.red},
      {
        "icon": Icons.sticky_note_2,
        "label": "Đánh giá\ngiáo viên",
        "color": Colors.green,
        "page": const Text("1")
      },
      {
        "icon": Icons.photo_library,
        "label": "Kho ảnh/hoạt động",
        "color": Colors.purple,
        "page": const Text("1")
      },
      {
        "icon": Icons.energy_savings_leaf,
        "label": "Năng lượng\nđinh dưỡng",
        "color": Colors.redAccent,
        "page": const Text("1")
      },
      {"icon": Icons.no_food, "label": "Báo cáo thực phẩmbị dị ứng", "page": FoodReportPage(),'color':Colors.red},
      {
        "icon": Icons.medical_services,
        "label": "Lịch sử\ntiêm ngừa",
        "color": Colors.purple,
        "page": const VanccinationHistoryPage()
      },
    ];
    return GridView.builder(
      shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 1,
          mainAxisSpacing: 5,
          childAspectRatio: 3 / 4,
        ),
        itemBuilder: (context, index) {
          final item = items[index];
          return Column(
            children: [
              InkWell(
                onTap: ()=>Get.to(item['page']),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow.shade100
                  ),
                    child: Icon(
                      item['icon'],
                      color: item['color'],
                      size: 45,

                    )),
              ),
              const SizedBox(height: 5,),
              Text(
                item['label'],
                style: const TextStyle(fontSize: 11,fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ],
          );
        });
  }
}
