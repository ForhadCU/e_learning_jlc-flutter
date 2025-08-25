import 'package:e_learning_jlc/app/data/models/memory_card_model.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/flip_card_game_controller.dart';

class FlipCardGameView extends GetView<FlipCardGameController> {
  const FlipCardGameView({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        title: const Text('Kanji Memory Challenge'),
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        elevation: 4,
        actions: [
          IconButton(
            onPressed: controller.resetGame,
            icon: const Icon(Icons.restart_alt),
            tooltip: 'Restart Game',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Game Stats
            Obx(() => _buildStatsPanel(controller, colorScheme)),
            const SizedBox(height: 24),

            // Game Board
            Expanded(
              child: Obx(
                () => GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: controller.cards.length,
                  itemBuilder: (context, index) {
                    return _buildFlipCard(controller, index, colorScheme);
                  },
                ),
              ),
            ),

            // Submit Button
            const SizedBox(height: 20),
             _buildSubmitButton(controller, colorScheme),

            // Game Completion Message
            Obx(() {
              if (controller.gameCompleted.value) {
                return _buildCompletionMessage(controller, colorScheme);
              }
              return const SizedBox.shrink();
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildStatsPanel(
    FlipCardGameController controller,
    ColorScheme colorScheme,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem(
            'Score',
            '${controller.score.value}',
            Icons.emoji_events,
            colorScheme.primary,
          ),
          _buildStatItem(
            'Attempts',
            '${controller.attempts.value}',
            Icons.autorenew,
            colorScheme.secondary,
          ),
          _buildStatItem(
            'Pairs',
            '${controller.cards.where((card) => card.isMatched).length ~/ 2}/${controller.cards.length ~/ 2}',
            Icons.check_circle,
            colorScheme.tertiary,
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(
    String label,
    String value,
    IconData icon,
    Color color,
  ) {
    return Column(
      children: [
        Icon(icon, color: color, size: 24),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }

  // flip_card_game_view.dart (only modified parts shown)
  // ... (previous imports and class definition remain same)

  Widget _buildFlipCard(
    FlipCardGameController controller,
    int index,
    ColorScheme colorScheme,
  ) {
    final card = controller.cards[index];
    final isFirstSelected = controller.firstSelectedIndex.value == index;
    final isSecondSelected = controller.secondSelectedIndex.value == index;
    final isSelected = isFirstSelected || isSecondSelected;

    return GestureDetector(
      onTap: () => controller.onCardTapped(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: isSelected
              ? Border.all(
                  color: isFirstSelected
                      ? colorScheme.primary
                      : colorScheme.secondary,
                  width: 3,
                )
              : null,
        ),
        child: AspectRatio(
          aspectRatio: 0.75,
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                // Front side (Question Mark)
                if (!card.isFlipped)
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          colorScheme.primary.withOpacity(0.8),
                          colorScheme.primary,
                        ],
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        '?',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                // Back side (Kanji)
                if (card.isFlipped)
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                      border: Border.all(
                        color: isFirstSelected
                            ? colorScheme.primary
                            : colorScheme.secondary,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            card.kanji,
                            style: const TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            card.meaning,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                // Done Icon for matched cards
                if (card.isMatched)
                  Positioned(
                    top: 4,
                    right: 4,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),

                // Selection indicator
                /* if (isFirstSelected)
                  Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                      child: const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                if (isSecondSelected)
                  Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: colorScheme.secondary,
                        shape: BoxShape.circle,
                      ),
                      child: const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
               */],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton(
    FlipCardGameController controller,
    ColorScheme colorScheme,
  ) {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
       
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          /* boxShadow: controller.canSubmit
              ? [
                  BoxShadow(
                    color: colorScheme.primary.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ]
              : null, */
        ),
        child: ElevatedButton(
          onPressed: controller.canSubmit ? controller.checkMatch : (){},
          style: ElevatedButton.styleFrom(
            backgroundColor: controller.canSubmit
                ? colorScheme.primary
                : Colors.transparent,
            foregroundColor: controller.canSubmit
                ? colorScheme.onPrimary
                : Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            side: BorderSide(color: Colors.transparent),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            elevation: controller.canSubmit ? 4 : 0,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                controller.canSubmit
                    ? Icons.check_circle
                    : Icons.check_circle_outline,
              ),
              const SizedBox(width: 8),
              Text(
                'Check Match',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: controller.canSubmit
                      ? colorScheme.onPrimary
                      : Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ... (rest of the view remains the same)

  Widget _buildCompletionMessage(
    FlipCardGameController controller,
    ColorScheme colorScheme,
  ) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          const Icon(Icons.celebration, size: 48, color: Colors.amber),
          const SizedBox(height: 16),
          Text(
            'Congratulations!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: colorScheme.primary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'You completed the game with ${controller.score.value} points',
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: controller.resetGame,
            child: const Text('Play Again'),
          ),
        ],
      ),
    );
  }
}
