import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rule_to_slay/constants/card_const.dart';
import 'package:rule_to_slay/data/entities/monster.dart';

part 'monster_card.freezed.dart';
part 'monster_card.g.dart';

@freezed
class MonsterCard with _$MonsterCard {
  const MonsterCard._();

  const factory MonsterCard({
    required String id,
    required String name,
    @JsonKey(name: 'img_url') required String imgUrl,
    @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
    @Default(CardType.MONSTER)
    CardType cardType,
    @JsonKey(name: 'ver_type') required String verType,

    //Slay conditions
    @JsonKey(name: 'hero_req') required int heroReq,
    @JsonKey(name: 'guardian_req') @Default(0) int guardianReq,
    @JsonKey(name: 'thief_req') @Default(0) int thiefReq,
    @JsonKey(name: 'wizard_req') @Default(0) int wizardReq,
    @JsonKey(name: 'fighter_req') @Default(0) int fighterReq,
    @JsonKey(name: 'bard_req') @Default(0) int bardReq,
    @JsonKey(name: 'ranger_req') @Default(0) int rangerReq,
    @JsonKey(name: 'additional_req') String? additionalReq,
    @JsonKey(name: 'special_slay_mechanism') String? specialSlayMechanism,

    //Slay Results
    @JsonKey(name: 'success_slay_req') required String successSlayReq,
    @JsonKey(name: 'success_slay_bonus') @Default("") String? successSlayBonus,
    @JsonKey(name: 'failure_slay_req') required String failureSlayReq,
    @JsonKey(name: 'failure_slay_penalty') required String failureSlayPenalty,
    @JsonKey(name: 'reward_effect') required String rewardEffect,
  }) = _MonsterCard;

  MonsterEntity toEntity() => MonsterEntity(
        id: id,
        name: name,
        imgUrl: imgUrl,
        cardType: cardTypeToJson(cardType),
        heroReq: heroReq,
        guardianReq: guardianReq,
        thiefReq: thiefReq,
        wizardReq: wizardReq,
        fighterReq: fighterReq,
        bardReq: bardReq,
        rangerReq: rangerReq,
        additionalReq: additionalReq,
        specialSlayMechanism: specialSlayMechanism,
        successSlayReq: successSlayReq,
        successSlayBonus: successSlayBonus,
        failureSlayReq: failureSlayReq,
        failureSlayPenalty: failureSlayPenalty,
        rewardEffect: rewardEffect,
        verType: verType,
      );

  factory MonsterCard.fromJson(Map<String, dynamic> json) =>
      _$MonsterCardFromJson(json);
}
