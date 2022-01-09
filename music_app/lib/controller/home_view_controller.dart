import 'package:get/get.dart';

class HomeViewController extends GetxController {
  final RxBool _isMicOpen = false.obs;
  bool get isMseticOpen => _isMicOpen.value;
  set isMicOpen(bool value) => _isMicOpen.value = value;
}
