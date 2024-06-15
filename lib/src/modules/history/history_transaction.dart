import 'package:app_ft_katec/src/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class HistoryTransaction extends StatelessWidget {
  const HistoryTransaction({super.key, this.isScroll});
  final bool? isScroll;

  @override
  Widget build(BuildContext context) {
    // List<Map<String,dynamic>> items = [
    //   {
    //     "tit"
    //   }
    // ]
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      itemCount: 2,
      physics: isScroll != false
          ? const AlwaysScrollableScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
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
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
    );
  }

  Widget listItem() {
    return ListView.separated(
      shrinkWrap: true,
      // scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return cardItem();
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
    );
  }

  Widget cardItem() {
    return TransactionWidget(
      icon: const Icon(
        Icons.wallet,
        color: Colors.orange,
        size: 40,
      ),
      title: "Thanh toán học phí tháng 4",
      titleColor: Colors.orange,
      subTitle: const Text(
        "1.200.000đ",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1),
      ),
      subTitle2: const Text(
        "08:59 - 26/03/2024",
        style: TextStyle(fontSize: 13),
      ),
      trailing: Column(
        children: [
          Image.asset("assets/images/logo_vcb.webp", height: 50, width: 50),
          const Text(
            "Thành công",
            style: TextStyle(
                color: Colors.green, fontSize: 13, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
