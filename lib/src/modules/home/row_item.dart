import 'package:flutter/material.dart';

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
        "page":Text("1")
      },
      {
        "icon":Icons.calendar_month,
        "label":"Thời khóa biểu",
        "page":Text("1")
      },
      {
        "icon":Icons.food_bank,
        "label":"Thực đơn",
        "page":Text("1")
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
              child: Column(
                children: [

                  Icon(item['icon'],color: Colors.blue,size: 40,),
                  Text(item['label'],style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                  ),

                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
