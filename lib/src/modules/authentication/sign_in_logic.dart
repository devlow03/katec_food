import 'package:app_ft_katec/src/core/app_constants.dart';
import 'package:app_ft_katec/src/data/repositories/post_login_bodies.dart';
import 'package:app_ft_katec/src/data/repositories/post_login_rp.dart';
import 'package:app_ft_katec/src/data/services/services.dart';
import 'package:app_ft_katec/src/modules/index/index_view.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInLogic extends GetxController{
  TextEditingController userNameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  Services api = Get.find();
  Rxn<PostLoginRp>postLoginRp = Rxn();
  Future<void>postLogin()async{
    postLoginRp.value=await api.postLogin(
      body: PostLoginBodies(username: userNameController.text, password: passController.text)
    );

    
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(AppConstants.token,postLoginRp.value?.data.accessToken??"");
    print(">>>>>>>>>>>>>>>>>token: ${postLoginRp.value?.data.accessToken??""}");

// Save an integer value to 'counter' key.

    Get.offAll(IndexPage());
    Fluttertoast.showToast(msg: "Đăng nhập thành công");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    userNameController.text = "katec";
    passController.text = "admin123";

  }
}