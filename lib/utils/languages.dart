import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'app_name': 'HomeGlam',
          'select_language': 'Select Language',
          'select_role': 'Select Whether you are a business or customer',
          'business': 'Business/Shop',
          'customer': 'Customer',
        },
        'ur_PK': {
          'app_name': 'ہوم گلیم',
          'select_language': 'زبان منتخب کریں',
          'select_role': 'منتخب کریں کہ آپ کاروبار ہیں یا صارف',
          'business': 'کاروبار / دکان',
          'customer': 'صارف',
        },
      };
}
