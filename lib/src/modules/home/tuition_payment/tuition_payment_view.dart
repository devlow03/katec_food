import 'package:app_ft_katec/src/modules/history/history_transaction.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TuitionPaymentPage extends StatelessWidget {
  const TuitionPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
        title: const Text("Thanh toán học phí"),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Hóa đơn chưa thanh toán",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Icon(
                  Icons.description,
                  size: 50,
                  color: Colors.amberAccent.shade700,
                ),
                const Text(
                  "1.600.000đ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 250, 133, 15),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                const Text(
                  "Học phí tháng 4",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const HistoryTransaction(
            isScroll: false,
          )
        ],
      ),
    );
  }
}
