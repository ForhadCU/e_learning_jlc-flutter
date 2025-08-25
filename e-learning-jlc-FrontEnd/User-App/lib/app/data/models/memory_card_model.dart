// memory_card.dart
class MemoryCard {
  final int id;
  final String kanji;
  final String meaning;
  bool isFlipped;
  bool isMatched;

  MemoryCard({
    required this.id,
    required this.kanji,
    required this.meaning,
    this.isFlipped = false,
    this.isMatched = false,
  });
}
