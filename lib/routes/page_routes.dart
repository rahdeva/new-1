import 'package:get/get.dart';
import 'package:tembang_bali/feature/dashboard/dashboard_binding.dart';
import 'package:tembang_bali/feature/dashboard/dashboard_page.dart';
import 'package:tembang_bali/feature/info_detail/info_detail_binding.dart';
import 'package:tembang_bali/feature/info_detail/info_detail_page.dart';
import 'package:tembang_bali/feature/introduction/introduction_binding.dart';
import 'package:tembang_bali/feature/introduction/introduction_page.dart';
import 'package:tembang_bali/feature/sekar/sekar_agung/sekar_agung_binding.dart';
import 'package:tembang_bali/feature/sekar/sekar_agung/sekar_agung_page.dart';
import 'package:tembang_bali/feature/sekar/sekar_alit/sekar_alit_binding.dart';
import 'package:tembang_bali/feature/sekar/sekar_alit/sekar_alit_page.dart';
import 'package:tembang_bali/feature/sekar/sekar_madia/sekar_madia_binding.dart';
import 'package:tembang_bali/feature/sekar/sekar_madia/sekar_madia_page.dart';
import 'package:tembang_bali/feature/sekar/sekar_rare/sekar_rare_binding.dart';
import 'package:tembang_bali/feature/sekar/sekar_rare/sekar_rare_page.dart';

import 'page_names.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: PageName.INTRODUCTION,
      page: () => const IntroductionPage(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: PageName.DASHBOARD,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: PageName.SEKAR_RARE,
      page: () => const SekarRarePage(),
      binding: SekarRareBinding(),
    ),
    GetPage(
      name: PageName.SEKAR_ALIT,
      page: () => const SekarAlitPage(),
      binding: SekarAlitBinding(),
    ),
    GetPage(
      name: PageName.SEKAR_MADIA,
      page: () => const SekarMadiaPage(),
      binding: SekarMadiaBinding(),
    ),
    GetPage(
      name: PageName.SEKAR_AGUNG,
      page: () => const SekarAgungPage(),
      binding: SekarAgungBinding(),
    ),
    GetPage(
      name: PageName.INFO_DETAIL,
      page: () => const InfoDetailPage(),
      binding: InfoDetailBinding(),
    ),
  ];
}
