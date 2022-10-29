import 'package:get/get.dart';
import 'package:qnbfinansbank_getx/src/controller/qnbfi/qnbfi_controller.dart';

class QnbfiBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QnbfiController>(() => QnbfiController());
  }
}
