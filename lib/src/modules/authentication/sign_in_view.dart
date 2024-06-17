import 'package:app_ft_katec/src/modules/authentication/sign_in_logic.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SigInView extends StatelessWidget {
  const SigInView({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(SignInLogic());
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: logic.userNameController,
            decoration: const InputDecoration(
              hintText: "Nhập username"
            ),
          ),
          const SizedBox(height: 10,),
          TextField(
            controller: logic.passController,
            decoration: const InputDecoration(
              hintText: "Nhập password"
            ),
          ),
          const SizedBox(height: 10,),
          ElevatedButton(
            onPressed: ()async=>await logic.postLogin(),
            child: const Text("Đăng nhập"),
          )
        ],
      ),
    );
  }
}