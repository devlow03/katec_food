import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'food_report_logic.dart';

class FoodReportPage extends StatelessWidget {
  FoodReportPage({Key? key}) : super(key: key);

  final logic = Get.put(FoodReportLogic());

  @override
  Widget build(BuildContext context) {
    List items = ["a", "b"];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
        title: const Text("Báo cáo thực phẩm bị dị ứng"),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: [
          Center(
              child: Image.network(
            "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D",
            width: 150,
            height: 100,
            fit: BoxFit.cover,
          )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Chọn thực phẩm bị dị ứng cho bé",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Thực phẩm 1:", style: TextStyle(fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: DropdownButton<String>(
                        padding: const EdgeInsets.all(2),

                        // elevation: 0,
                        hint: const Text(
                          'Chọn nguyên liệu 1',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),

                        ),

                        underline: const Center(),

                        onChanged: (val) {},
                        items: <String>["a","b"]
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
          ),
          const SizedBox(height: 30,),
          const Text(
            "Phụ huynh báo thực phẩm bị dị ứng: ",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 10,),
          const TextField(
            maxLines: 5,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              )
            ),
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff0000FF),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
                  onPressed: (){},
                  child: Text("THỰC HIỆN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
              ),)),
            ],
          )
        ],
      ),
    );
  }
}
