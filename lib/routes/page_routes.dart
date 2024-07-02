import 'package:get/get.dart';
import 'package:tembang_bali/feature/dashboard/dashboard_binding.dart';
import 'package:tembang_bali/feature/dashboard/dashboard_page.dart';
import 'package:tembang_bali/feature/introduction/introduction_binding.dart';
import 'package:tembang_bali/feature/introduction/introduction_page.dart';

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
  ];
}
