import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rule_to_slay/constants/card_const.dart';
import 'package:rule_to_slay/data/entities/modifier.dart';

part 'modifier_card.freezed.dart';
part 'modifier_card.g.dart';

@freezed
class ModifierCard with _$ModifierCard {
  const ModifierCard._();
  const factory ModifierCard({
    required String id,
    required String name,
    @JsonKey(name: 'img_url') required String imgUrl,
    @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
    @Default(CardType.MODIFIER)
    CardType cardType,
    @JsonKey(name: 'ver_type') required String verType,

    //Info
    @JsonKey(name: 'plus') @Default("") String? plus,
    @JsonKey(name: 'minus') @Default("") String? minus,
    @JsonKey(name: 'additional_info') String? additionalInfo,
  }) = _ModifierCard;

  ModifierEntity toEntity() => ModifierEntity(
        id: id,
        name: name,
        imgUrl: imgUrl,
        cardType: cardTypeToJson(cardType),
        verType: verType,
        plus: plus,
        minus: minus,
        additionalInfo: additionalInfo,
      );

  factory ModifierCard.fromJson(Map<String, dynamic> json) =>
      _$ModifierCardFromJson(json);
}
