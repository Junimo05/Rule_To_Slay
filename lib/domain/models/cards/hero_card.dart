import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rule_to_slay/constants/card_const.dart';

part 'hero_card.freezed.dart';
part 'hero_card.g.dart';

@freezed
class HeroCard with _$HeroCard {
  // "id": "bad_axe",
  // "name": "Bad Axe",
  // "img_url": "",
  // "class": "Fighter",
  // "type": "Hero",
  // "success_roll": "8+",
  // "effect": "DESTROY a Hero card"

  const factory HeroCard({
    required String id,
    required String name,
    @JsonKey(name: 'img_url') required String imgUrl,
    @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
    @Default(CardType.HERO)
    CardType cardType,
    @JsonKey(name: 'class') required String classType,
    @JsonKey(name: 'success_roll') required String successDice,
    @JsonKey(name: 'effect') required String effect,
  }) = _HeroCard;

  factory HeroCard.fromJson(Map<String, dynamic> json) =>
      _$HeroCardFromJson(json);
}
