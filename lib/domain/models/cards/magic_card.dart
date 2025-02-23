import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rule_to_slay/constants/card_const.dart';
import 'package:rule_to_slay/data/entities/magic.dart';

part 'magic_card.freezed.dart';
part 'magic_card.g.dart';

@freezed
class MagicCard with _$MagicCard {
  const MagicCard._();

  const factory MagicCard({
    required String id,
    required String name,
    @JsonKey(name: 'img_url') required String imgUrl,
    @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
    @Default(CardType.MAGIC)
    CardType cardType,
    @JsonKey(name: 'effect') required String effect,
    @JsonKey(name: 'additional_req') String? additionalRequire,
    @JsonKey(name: 'ver_type') required String verType,
  }) = _MagicCard;

  MagicEntity toEntity() => MagicEntity(
        id: id,
        name: name,
        imgUrl: imgUrl,
        cardType: cardTypeToJson(cardType),
        effect: effect,
        additionalRequire: additionalRequire,
        verType: verType,
      );

  factory MagicCard.fromJson(Map<String, dynamic> json) =>
      _$MagicCardFromJson(json);
}
