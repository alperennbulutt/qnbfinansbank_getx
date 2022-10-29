import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qnbfinansbank_getx/src/theme/app_theme.dart';
import 'package:qnbfinansbank_getx/src/translations/app_translations.dart';
import 'src/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.Qnbfi,
    getPages: AppPages.pages,
    locale: const Locale('pt', 'BR'),
    translationsKeys: AppTranslation.translations,
    theme: appThemeData,
  ));
}
