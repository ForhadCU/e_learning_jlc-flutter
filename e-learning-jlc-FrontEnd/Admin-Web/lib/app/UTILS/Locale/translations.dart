import 'package:get/get.dart';

import '../constants/app_texts.dart';

class TTranslations implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': TLanguages.enUS,
    'ja_JP': TLanguages.jaJP,
  };
}
