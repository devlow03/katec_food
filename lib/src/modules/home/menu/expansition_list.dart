import 'package:app_ft_katec/src/modules/home/menu/menu_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpansionList extends StatelessWidget {
  const ExpansionList({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(MenuLogic());
    return Container(
      color: const Color(0xffFF8080),
      child: ExpansionTile(
        onExpansionChanged: (val) => logic.isExpanded.value = val,
        leading: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Obx(() => Icon(
                      logic.isExpanded.value == false
                          ? Icons.keyboard_double_arrow_down
                          : Icons.keyboard_double_arrow_up,
                      color: Colors.white,
                    ))),
            const TextSpan(
                text: "SÁNG",
                style: TextStyle(color: Colors.white, fontSize: 18))
          ]),
        ),
        // trailing: Icon(Icons.keyboard_double_arrow_down),
        controlAffinity: ListTileControlAffinity.leading,
        iconColor: Colors.white,
        title: const Text(
          "CHÁO TÔM THỊT RAU CỦ",
          style: TextStyle(color: Colors.white, fontSize: 18),
          textAlign: TextAlign.center,
        ),

        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: const Color(0xffF8C4B4),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Nguyên liệu'),
                SizedBox(
                  width: 10,
                ),
                Text(
                    'Bột năng: 15.00 Gam\nCà rốt (củ đỏ, vàng): 15.00 Gam\nHành lá (hành hoa): 3.00 Gam\nĐường cát: 15.00 Gam\nMuối: 0.50 Gam')
              ],
            ),
          )
        ],
      ),
    );
  }
}
