import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  const RowItem({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> items = [
      {
        "icon":Icons.edit_calendar,
      }
    ];
    return Container(
      child: Row(),
    );
  }
}
