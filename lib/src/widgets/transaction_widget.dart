import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.titleColor,
      required this.subTitle,
      required this.subTitle2,
      required this.trailing});
  final Icon icon;
  final String title;
  final Color titleColor;
  final Widget subTitle;
  final Widget subTitle2;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.blueGrey.shade200),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.yellow.shade100),
                child: Padding(padding: const EdgeInsets.all(5), child: icon)),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: titleColor),
                ),
                const SizedBox(
                  height: 5,
                ),
                subTitle,
                subTitle2
              ],
            ),
            trailing
           
          ],
        ));
  }
}
