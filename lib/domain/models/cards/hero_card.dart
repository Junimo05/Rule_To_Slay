import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rule_to_slay/constants/card_const.dart';
import 'package:rule_to_slay/data/entities/hero.dart';

part 'hero_card.freezed.dart';
part 'hero_card.g.dart';

@freezed
class HeroCard with _$HeroCard {
  const HeroCard._();

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
    @JsonKey(name: 'ver_type') required String verType,
  }) = _HeroCard;

  HeroEntity toEntity() => HeroEntity(
        id: id,
        name: name,
        imgUrl: imgUrl,
        cardType: cardTypeToJson(cardType),
        classType: classType,
        successDice: successDice,
        effect: effect,
        verType: verType,
      );

  factory HeroCard.fromJson(Map<String, dynamic> json) =>
      _$HeroCardFromJson(json);
}
