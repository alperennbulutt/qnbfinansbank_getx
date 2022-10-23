import 'package:get/get.dart';
import 'package:qnbfinansbank_getx/src/controller/home/home_controller.dart';
import 'package:qnbfinansbank_getx/src/data/provider/api.dart';
import 'package:qnbfinansbank_getx/src/data/repository/posts_repository.dart';

import 'package:http/http.dart' as http;

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(
        repository:
            MyRepository(apiClient: MyApiClient(httpClient: http.Client()))));
  }
}
