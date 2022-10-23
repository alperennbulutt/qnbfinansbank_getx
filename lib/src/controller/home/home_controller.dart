import 'package:get/get.dart';
import 'package:qnbfinansbank_getx/src/data/model/model.dart';
import 'package:qnbfinansbank_getx/src/data/model/photos_model.dart';
import 'package:qnbfinansbank_getx/src/data/repository/posts_repository.dart';
import 'package:qnbfinansbank_getx/src/pages/home_page.dart';
import 'package:qnbfinansbank_getx/src/routes/app_pages.dart';

class HomeController extends GetxController {
  final MyRepository repository;
  HomeController({required this.repository});

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    getPhotos();
    getAll();
  }

// photos
  final _photosList = <PhotosModel>[].obs;
  get photosList => _photosList.value;
  set photosList(value) => _photosList.value = value;

  final _photosModel = PhotosModel().obs;
  get postPhotos => _photosModel.value;
  set postPhotos(value) => _photosModel.value = value;
  // ----------------------------------------

  // postModel
  final _postList = <MyModel>[].obs;
  get postList => _postList.value;
  set postList(value) => _postList.value = value;

  final _post = MyModel().obs;
  get post => _post.value;
  set post(value) => _post.value = value;

  getAll() {
    repository.getAll().then((data) {
      postList = data;
    });
  }

  getPhotos() {
    repository.getPhotos().then((data) {
      photosList = data;
    });
  }

  // route second page
  goToSecondPage() {
    // Get.to(HomePage());

    // Get.back();

    Get.toNamed(Routes.SECONDPAGE);
  }

  details(post) {
    this.post = post;
    Get.toNamed(Routes.DETAILS);
  }
}
