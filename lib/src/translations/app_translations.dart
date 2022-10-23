import 'package:qnbfinansbank_getx/src/translations/en_US/en_us_translations.dart';
import 'package:qnbfinansbank_getx/src/translations/es_MX/es_mx_translations.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'en_US': enUS,
    'es_mx': esMx,
  };
}
