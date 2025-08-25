// flip_card_game_controller.dart
import 'package:e_learning_jlc/app/data/models/memory_card_model.dart';
import 'package:get/get.dart';

class FlipCardGameController extends GetxController {
  // Reactive game state
  RxList<MemoryCard> cards = <MemoryCard>[].obs;
  RxInt score = 0.obs;
  RxInt attempts = 0.obs;
  var firstSelectedIndex = Rx<int?>(null);
  var secondSelectedIndex = Rx<int?>(null);
  RxBool gameCompleted = false.obs;

  // Kanji data with meanings
  final List<Map<String, String>> _kanjiData = const [
    {'kanji': '一', 'meaning': 'One'},
    {'kanji': '二', 'meaning': 'Two'},
    {'kanji': '三', 'meaning': 'Three'},
    {'kanji': '四', 'meaning': 'Four'},
  ];

  @override
  void onInit() {
    super.onInit();
    _initializeGame();
  }

  void _initializeGame() {
    List<MemoryCard> newCards = [];
    int id = 0;

    // Create pairs of cards
    for (var data in _kanjiData) {
      newCards.add(MemoryCard(
        id: id++,
        kanji: data['kanji']!,
        meaning: data['meaning']!,
      ));
      newCards.add(MemoryCard(
        id: id++,
        kanji: data['kanji']!,
        meaning: data['meaning']!,
      ));
    }

    newCards.shuffle();

    cards.value = newCards;
    firstSelectedIndex.value = null;
    secondSelectedIndex.value = null;
    score.value = 0;
    attempts.value = 0;
    gameCompleted.value = false;
  }

  void onCardTapped(int index) {
    final card = cards[index];
    
    // Don't allow tapping on matched cards or during game completion
    if (card.isMatched || gameCompleted.value) {
      return;
    }

    // If this card is already selected as first card, do nothing
    if (index == firstSelectedIndex.value) {
      return;
    }

    // If this card is already selected as second card, deselect it
    if (index == secondSelectedIndex.value) {
      cards[index].isFlipped = false;
      secondSelectedIndex.value = null;
      cards.refresh();
      return;
    }

    // If no first card selected, set this as first
    if (firstSelectedIndex.value == null) {
      cards[index].isFlipped = true;
      firstSelectedIndex.value = index;
      cards.refresh();
      return;
    }

    // If first card is selected but no second card, set this as second
    if (secondSelectedIndex.value == null) {
      cards[index].isFlipped = true;
      secondSelectedIndex.value = index;
      cards.refresh();
      return;
    }

    // If both cards are already selected, replace the second card
    if (firstSelectedIndex.value != null && secondSelectedIndex.value != null) {
      // Close the current second card
      cards[secondSelectedIndex.value!].isFlipped = false;
      
      // Open the new second card
      cards[index].isFlipped = true;
      secondSelectedIndex.value = index;
      cards.refresh();
    }
  }

  void checkMatch() {
    if (firstSelectedIndex.value == null || secondSelectedIndex.value == null) {
      return;
    }

    attempts.value++;
    final firstCard = cards[firstSelectedIndex.value!];
    final secondCard = cards[secondSelectedIndex.value!];

    if (firstCard.kanji == secondCard.kanji) {
      // Correct match - mark as matched and keep them open
      firstCard.isMatched = true;
      secondCard.isMatched = true;
      score.value += 20;
      
      // Reset selection for next turn
      firstSelectedIndex.value = null;
      secondSelectedIndex.value = null;
      
      // Check for game completion
      if (cards.every((card) => card.isMatched)) {
        score.value += 50;
        gameCompleted.value = true;
      }
    } else {
      // Incorrect match - close both cards after delay
      Future.delayed(const Duration(milliseconds: 800), () {
        firstCard.isFlipped = false;
        secondCard.isFlipped = false;
        firstSelectedIndex.value = null;
        secondSelectedIndex.value = null;
      });
    }

    cards.refresh();
  }

  void resetGame() {
    _initializeGame();
  }

  bool get canSubmit => firstSelectedIndex.value != null && secondSelectedIndex.value != null;
}