import 'package:get/get.dart';

import '../controllers/flip_card_game_controller.dart';

class FlipCardGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FlipCardGameController>(
      () => FlipCardGameController(),
    );
  }
}
