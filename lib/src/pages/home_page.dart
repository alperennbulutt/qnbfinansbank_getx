import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qnbfinansbank_getx/src/controller/home/home_controller.dart';
import 'package:qnbfinansbank_getx/src/routes/app_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana sayfa'),
      ),
      body: Container(
        // width: Get.width / 2,
        // height: Get.height / 2,
        //  decoration: BoxDecoration(color: Colors.red),
        child: GetX<HomeController>(
          initState: (state) {
            Get.find<HomeController>().getPhotos();
            Get.find<HomeController>().getAll();
          },
          builder: (_) {
            return _.photosList.length < 1
                ? const Center(child: CircularProgressIndicator())
                : GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => Get.toNamed(Routes.SECONDPAGE),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Image.network(_.photosList[index].url),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(_.photosList[index].title),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
            // ListView.builder(
            //     itemCount: _.photosList.length,
            //     itemBuilder: (context, index) {
            // return GestureDetector(
            //   onTap: () => Get.toNamed(Routes.SECONDPAGE),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Column(
            //           children: [
            //             Image.network(_.photosList[index].url),
            //           ],
            //         ),
            //       ),
            //       Expanded(
            //         child: Column(
            //           children: [
            //             Text(_.photosList[index].title),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // );
            //     },
            //   );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            // flutterda alert dialog'a karşılık gelmektedir.

            //  getx kullanmadan bu şekilde popuplarımızı oluşturuyorduk
            // showDialog(
            //   context: context,
            //   builder: (context) {
            //     return AlertDialog(
            //       title: Text('getx farkı'),
            //     );
            //   },
            // )
            Get.defaultDialog(
                onConfirm: () => {
                      print("Ok"),

                      // navagitator.push(()=> materialbuilder()=> Homepage())
                      // navagitator.pop(context);

                      Get.back(),
                    },
                middleText: "Dialog made in 3 lines of code"),

        // Get.snackbar('Hi', 'i am a modern snackbar'),
      ),
    );
  }
}
