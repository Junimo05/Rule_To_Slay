import 'package:flutter/material.dart';
import 'package:rule_to_slay/constants/card_const.dart';
import 'package:rule_to_slay/domain/models/cards/card.dart';

class GlassCard<T extends CardModel> extends StatelessWidget {
  final T card;
  final double? width;
  final double? height;

  const GlassCard({super.key, required this.card, this.width, this.height});

  CardSize get _cardSize {
    return card.cardType == CardType.PARTY_LEADER ||
            card.cardType == CardType.MONSTER
        ? CardSize.large
        : CardSize.small;
  }

  @override
  Widget build(BuildContext context) {
    final aspectRatio = cardAspectRatios[_cardSize]!;

    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                card.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                card.cardType as String,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    card.imgUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.error, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
