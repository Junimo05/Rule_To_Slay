import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rule_to_slay/constants/card_const.dart';
import 'package:rule_to_slay/data/entities/item.dart';

part 'item_card.freezed.dart';
part 'item_card.g.dart';

@freezed
class ItemCard with _$ItemCard {
  /// [additionalRequire] is an optional field that may or may not be present.
  const ItemCard._();
  const factory ItemCard({
    required String id,
    required String name,
    @JsonKey(name: 'img_url') required String imgUrl,
    @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
    @Default(CardType.ITEM)
    CardType cardType,
    @JsonKey(name: 'item_type') required String itemType,
    @JsonKey(name: 'effect') required String effect,
    @JsonKey(name: 'additional_req') String? additionalRequire,
    @JsonKey(name: 'ver_type') required String verType,
  }) = _ItemCard;

  ItemEntity toEntity() => ItemEntity(
        id: id,
        name: name,
        imgUrl: imgUrl,
        cardType: cardTypeToJson(cardType),
        itemType: itemType,
        effect: effect,
        additionalRequire: additionalRequire,
        verType: verType,
      );

  factory ItemCard.fromJson(Map<String, dynamic> json) =>
      _$ItemCardFromJson(json);
}
