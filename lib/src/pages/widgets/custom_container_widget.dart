import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomContainerWidget extends StatelessWidget {
  CustomContainerWidget(
      {Key? key, required this.child, required this.containerHeight})
      : super(key: key);

  final Widget child;
  final double containerHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8),
        color: Colors.white,
        width: Get.width,
        height: Get.height * containerHeight,
        child: child

        // const Text('background color test'),
        );
  }
}
