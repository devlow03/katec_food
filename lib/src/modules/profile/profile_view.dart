import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile_logic.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final logic = Get.put(ProfileLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tài khoản"),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: cardAppBar(context)),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          cardBody(context),
          const SizedBox(
            height: 10,
          ),
          listItem(),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.logout_outlined,
                    color: Colors.red,
                  ),
                  Text(
                    "Đăng xuất",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget cardAppBar(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://mighty.tools/mockmind-api/content/human/5.jpg"),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(()=>Text(
                      "${logic.getInfoRp.value?.data.fullName}",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),),
                    Container(
                        clipBehavior: Clip.none,
                        // alignment: Alignment.start,

                        // margin: EdgeInsets.only(top: 5,right: MediaQuery.of(context).size.width*.25),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color(0xffF0DE36),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Text(
                          "Phụ huynh học sinh",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        )),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ],
        ));
  }

  Widget cardBody(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.blueGrey.shade200),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8))),
              child: const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://mighty.tools/mockmind-api/content/human/49.jpg"),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width * .55,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blueGrey.shade200),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bé: Nguyễn Văn B",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("Tuổi: 4"),
                        Text("Lớp: Lá 1")
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_drop_down))
                  ],
                )),
          ],
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * .28,
          child: Container(
            padding: const EdgeInsets.all(2),
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blueGrey.shade100)),
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade200,
                shape: BoxShape.circle,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget listItem() {
    List titleItem = ["Cá nhân", "Hỗ trợ và cài đặt"];
    List<Map<String, dynamic>> itemProfile = [
      {
        'icon': Icons.manage_accounts,
        'color': Colors.green,
        'title': "Quản lí tài khoản"
      },
      {
        'icon': Icons.contact_page,
        'color': Colors.orange,
        'title': "Thông tin liên lạc"
      },
      {
        'icon': Icons.credit_card,
        'color': Colors.blue,
        'title': "Cài đặt thanh toán"
      },
    ];

    List<Map<String, dynamic>> itemSetting = [
      {
        'icon': Icons.headphones,
        'color': Colors.greenAccent,
        'title': "Trung tâm hỗ trợ"
      },
      {
        'icon': Icons.verified_user,
        'color': Colors.blue,
        'title': "Trung tâm bảo mật"
      },
      {
        'icon': Icons.settings,
        'color': Colors.orange,
        'title': "Cài đặt ứng dụng"
      },
    ];
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: titleItem.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleItem[index],
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: ListView.separated(
                padding: const EdgeInsets.all(15),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: index == 0 ? itemProfile.length : itemSetting.length,
                itemBuilder: (context, ind) {
                  final item = index == 0 ? itemProfile[ind] : itemSetting[ind];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            item['icon'],
                            color: item['color'],
                            size: 30,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            item['title'],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: Colors.grey,
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 5,
                ),
              ),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
    );
  }
}
