import 'package:app_ft_katec/src/modules/home/menu/menu_view.dart';
import 'package:app_ft_katec/src/modules/home/time_table/time_table_view.dart';
import 'package:app_ft_katec/src/modules/home/tuition_payment/tuition_payment_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowItem extends StatelessWidget {
  const RowItem({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> items = [
      {
        "icon":Icons.edit_calendar,
        "label":"Báo cắt suất/nghỉ học",
        "page":Text("1")
      },
      {
        "icon":Icons.wallet,
        "label":"Thanh toán học phí",
        "page":const TuitionPaymentPage()
      },
      {
        "icon":Icons.calendar_month,
        "label":"Thời khóa biểu",
        "page":const TimeTablePage()
      },
      {
        "icon":Icons.food_bank,
        "label":"Thực đơn",
        "page":const MenuPage()
      }
    ];
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: items.map((item){
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: ()=>Get.to(item['page']),
                child: AbsorbPointer(
                  child: Column(
                    children: [
                  
                      Icon(item['icon'],color: Colors.blue,size: 40,),
                      Text(item['label'],style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                      ),
                  
                    ],
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
