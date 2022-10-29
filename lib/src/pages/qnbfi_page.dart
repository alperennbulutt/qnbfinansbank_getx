import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qnbfinansbank_getx/src/constants/assets.dart';
import 'package:qnbfinansbank_getx/src/controller/qnbfi/qnbfi_controller.dart';
import 'package:qnbfinansbank_getx/src/pages/widgets/custom_container_widget.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class QnbfiPage extends StatelessWidget {
  QnbfiPage({super.key});

  final controller = Get.put(QnbfiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        //todo 1. soldan logo boşluk kaldırılacak
        // preferredsize ile appbarın uzunluğu arttırdık.
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.appBarHeader),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,

            leadingWidth: Get.width,

            // logo
            leading: Image.asset(
              Assets.appBarLogo,
            ),

            titleSpacing: 0,
            // menu
            actions: [
              GestureDetector(
                  onTap: () {
                    controller.isClickMenuButton.value =
                        !controller.isClickMenuButton.value;
                    //  print(controller.isClickMenuButton.value.toString());
                  },
                  child: Image.asset(Assets.appBarHamburgerMenu))
            ],
          ),
        ),
        body: Obx(() => Column(
              children: [
                !controller.isClickMenuButton.value

                    // Ana sayfa tasarımı
                    ? Column(
                        children: [
                          CustomContainerWidget(
                              containerHeight: 0.4,
                              // todo dot indicator eklenecek
                              child: CarouselSlider(
                                options: CarouselOptions(
                                    enlargeCenterPage: true,
                                    height: Get.height,
                                    autoPlay: true),
                                items: imgList
                                    .map((item) => Container(
                                          width: Get.width,
                                          height: Get.height,
                                          child: Center(
                                              child: Image.network(
                                                  item.toString())),
                                          color: Colors.white,
                                        ))
                                    .toList(),
                              )),

                          // Text('home page'),
                        ],
                      )

                    // Menu sayfa tasarımı
                    : const Text('menu sayfa'),
              ],
            )));
  }
}
