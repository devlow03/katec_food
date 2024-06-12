import 'package:get/get.dart';

class IndexLogic extends GetxController {
  Rxn<int>tabIndex = Rxn();

  selectTab(int index){
    tabIndex.value = index;
  }
}
