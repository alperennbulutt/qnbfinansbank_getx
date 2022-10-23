import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    getPages: AppPages.pages,
    locale: const Locale('pt', 'BR'),
  ));
}
