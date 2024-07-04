import 'package:get/get.dart';
import 'package:tembang_bali/feature/karaoke/karaoke_controller.dart';

class KaraokeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<KaraokeController>(KaraokeController());
  }
}
