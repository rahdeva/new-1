import 'package:get/get.dart';
import 'package:tembang_bali/model/sekar.dart';
import 'package:tembang_bali/resources/resources.dart';
import 'package:tembang_bali/routes/page_names.dart';

class DashboardController extends GetxController {
  List<Sekar> get dataListSekar => [
    Sekar(
      id: 0,
      title: "Sekar Rare",
      desc: "Lagu atau Gegendingan Sederhana",
      color: AppColors.yellow,
      route: PageName.SEKAR_RARE,
      image: AppImages.illSekarRare.path,
    ),
    Sekar(
      id: 1,
      title: "Sekar Alit",
      desc: "Pupuh atau geguritan",
      color: AppColors.green,
      route: PageName.SEKAR_ALIT,
      image: AppImages.illSekarAlit.path,
    ),
    Sekar(
      id: 2,
      title: "Sekar Madia",
      desc: "Nyanyian Tuhan atau Kidung",
      color: AppColors.purple,
      route: PageName.SEKAR_MADIA,
      image: AppImages.illSekarMadia.path,
    ),
    Sekar(
      id: 3,
      title: "Sekar Agung",
      desc: "Kekawin atau Puisi Bali klasik",
      color: AppColors.red,
      route: PageName.SEKAR_AGUNG,
      image: AppImages.illSekarAgung.path,
    ),
  ];
}