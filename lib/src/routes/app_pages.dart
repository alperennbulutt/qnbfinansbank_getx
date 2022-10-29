import 'package:get/route_manager.dart';
import 'package:qnbfinansbank_getx/src/bindings/home_binding.dart';
import 'package:qnbfinansbank_getx/src/bindings/qnbfi_binding.dart';
import 'package:qnbfinansbank_getx/src/pages/home_page.dart';
import 'package:qnbfinansbank_getx/src/pages/qnbfi_page.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    // homepage
    GetPage(
      name: Routes.INITIAL,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),

    // qnbfi page
    GetPage(
        name: Routes.Qnbfi, page: () => QnbfiPage(), binding: QnbfiBinding()),
  ];
}
