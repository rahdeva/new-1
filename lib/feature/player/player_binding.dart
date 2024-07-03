import 'package:get/get.dart';
import 'package:tembang_bali/feature/player/player_controller.dart';

class PlayerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PlayerController>(PlayerController());
  }
}
