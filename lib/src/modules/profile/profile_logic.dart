import 'package:app_ft_katec/src/data/repositories/get_info_rp.dart';
import 'package:app_ft_katec/src/data/services/services.dart';
import 'package:get/get.dart';

class ProfileLogic extends GetxController {
  Services api = Get.find();

  Rxn<GetInfoRp>getInfoRp = Rxn();

  Future<GetInfoRp?>getInfo()async{
    getInfoRp.value = await api.getInfo();
    return getInfoRp.value;
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    getInfo();
  }
}
