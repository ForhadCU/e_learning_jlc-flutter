import 'package:get/get.dart';

import '../modules/flip_card_game/bindings/flip_card_game_binding.dart';
import '../modules/flip_card_game/views/flip_card_game_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FLIP_CARD_GAME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FLIP_CARD_GAME,
      page: () => const FlipCardGameView(),
      binding: FlipCardGameBinding(),
    ),
  ];
}
