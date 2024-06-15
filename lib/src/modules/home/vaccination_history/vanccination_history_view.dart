import 'package:app_ft_katec/src/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VanccinationHistoryPage extends StatelessWidget {
  const VanccinationHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
        title: const Text("Lịch sử tiêm ngừa"),
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 10),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 160,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.blue.shade300)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.local_hospital,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Khai báo\ntiêm chủng",
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
          const SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Tháng 06/2024",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              listItem()
            ],
          )
        ],
      ),
    );
  }

  Widget listItem() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const TransactionWidget(
          icon: Icon(
            Icons.medical_information,
            color: Colors.green,
            size: 40,
          ),
          title: "Tiêm ngừa vắc xin cúm mùa",
          titleColor: Colors.green,
          subTitle: Text(
            "08:59 26/03/2024",
            style: TextStyle(fontSize: 14),
          ),
          subTitle2: Text("Bệnh viện nhi đồng TP. Cần Thơ"),
          trailing: Text(
            "345.000đ",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 10,
      ),
    );
  }
}
