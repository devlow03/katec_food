import 'package:app_ft_katec/src/modules/history/history_transaction.dart';
import 'package:app_ft_katec/src/modules/history/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'history_logic.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({Key? key}) : super(key: key);

  final logic = Get.put(HistoryLogic());

  @override
  Widget build(BuildContext context) {
    List tabs = ["Tất cả", "Học phí", "Nghỉ học", "Tiêm ngừa"];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Lịch sử"),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: search(),
          ),
        ),
        body: DefaultTabController(
            initialIndex: 0,
            length: tabs.length,
            child: Column(
                children: [
                  Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300))),
                child: Center(
                    child: TabBar(
                  tabAlignment: TabAlignment.center,
                  indicatorWeight: 1,
                  indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  indicatorColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle:
                      const TextStyle(fontWeight: FontWeight.w700),
                  labelColor: Colors.black,
                  onTap: (index) async {},
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.black),
                  tabs: tabs.map((tab) {
                    return Tab(
                      text: tab,
                    );
                  }).toList(),
                )),
              ),
                  Expanded(
                    child: TabBarView(
                      children: tabs.map((e){
                        return const HistoryTransaction();
                      }).toList()
                    ),
                  )

            ]
          )
        )
    );
  }

  Widget search() {
    TextEditingController searchController = TextEditingController();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: TextField(
            clipBehavior: Clip.none,
            readOnly: false,
            // controller: searchController,
            // style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 30,
                    )),
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 2,
                      height: 30,
                      color: Colors.grey.shade200,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.filter_alt,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ],
                )),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
