import 'package:get/get.dart';
import 'package:tembang_bali/model/sekar_agung.dart';

class SekarAgungController extends GetxController {
  List<SekarAgung> get dataListSekarAgung => [
    SekarAgung(
      id: 0,
      title: "Kekawin Ramayana",
    ),
    SekarAgung(
      id: 1,
      title: "Kekawin Arjuna Wiwaha",
    ),
  ];
}
