import 'package:get/get.dart';
import 'package:tembang_bali/feature/introduction/introduction_controller.dart';

class IntroductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<IntroductionController>(IntroductionController());
  }
}
