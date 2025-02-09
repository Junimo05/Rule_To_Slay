import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rule_to_slay/constants/card_const.dart';

part 'magic_card.freezed.dart';
part 'magic_card.g.dart';

@freezed
class MagicCard with _$MagicCard {
  const factory MagicCard({
    required String id,
    required String name,
    @JsonKey(name: 'img_url') required String imgUrl,
    @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
    @Default(CardType.MAGIC)
    CardType cardType,
    @JsonKey(name: 'effect') required String effect,
    @JsonKey(name: 'additional_req') String? additionalRequire,
  }) = _MagicCard;

  factory MagicCard.fromJson(Map<String, dynamic> json) =>
      _$MagicCardFromJson(json);
}
