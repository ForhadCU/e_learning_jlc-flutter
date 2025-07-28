import 'package:get/get.dart';

class DropdownController extends GetxController{
  var selectedValue = ''.obs;

  void setValue(String? value) {
    selectedValue.value = value ?? '';
  }
}