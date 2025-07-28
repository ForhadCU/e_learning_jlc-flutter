import 'package:get/get.dart';

class TextInputfieldController extends GetxController {
  var isLoginPassVisible = true.obs;
  var isConfirmPassVisible = false.obs;
  var labelText = "".obs;

  void mToggleLoginPassVisibility() {
    isLoginPassVisible.value = !isLoginPassVisible.value;
  }

  void mToggleConfirmPassVisibility() {
    isLoginPassVisible.value = !isLoginPassVisible.value;
  }
}
