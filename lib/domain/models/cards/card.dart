import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rule_to_slay/constants/card_const.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezed
class CardModel with _$CardModel {
  const factory CardModel({
    required String id,
    required String name,
    required String imgUrl,
    @JsonKey(fromJson: cardTypeFromJson, toJson: cardTypeToJson)
    @Default(CardType.UNKNOWN)
    CardType cardType,
  }) = _CardModel;

  factory CardModel.fromJson(Map<String, dynamic> json) =>
      _$CardModelFromJson(json);
}
