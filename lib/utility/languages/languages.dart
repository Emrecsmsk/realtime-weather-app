import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Realtime Weather',
          'enter': 'Enter a city',
        },
        'tr_TR': {
          'title': '',
        }
      };
}
