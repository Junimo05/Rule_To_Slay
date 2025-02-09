import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rule_to_slay/constants/card_const.dart';

part 'challenge_card.freezed.dart';
part 'challenge_card.g.dart';

@freezed
class ChallengeCard with _$ChallengeCard {
  const factory ChallengeCard({
    required String id,
    required String name,
    @JsonKey(name: 'img_url') required String imgUrl,
    @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
    @Default(CardType.CHALLENGE)
    CardType cardType,
    @JsonKey(name: 'effect') required String effect,
    @JsonKey(name: 'additional_req') String? additionalRequire,
  }) = _ChallengeCard;

  factory ChallengeCard.fromJson(Map<String, dynamic> json) =>
      _$ChallengeCardFromJson(json);
}
