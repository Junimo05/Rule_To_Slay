// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monster_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonsterCardImpl _$$MonsterCardImplFromJson(Map<String, dynamic> json) =>
    _$MonsterCardImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imgUrl: json['img_url'] as String,
      cardType: json['type'] == null
          ? CardType.MONSTER
          : cardTypeFromJson(json['type'] as String),
      heroReq: (json['hero_req'] as num).toInt(),
      guardianReq: (json['guardian_req'] as num?)?.toInt() ?? 0,
      thiefReq: (json['thief_req'] as num?)?.toInt() ?? 0,
      wizardReq: (json['wizard_req'] as num?)?.toInt() ?? 0,
      fighterReq: (json['fighter_req'] as num?)?.toInt() ?? 0,
      bardReq: (json['bard_req'] as num?)?.toInt() ?? 0,
      rangerReq: (json['ranger_req'] as num?)?.toInt() ?? 0,
      additionalReq: json['additional_req'] as String? ?? "",
      specialSlayMechanism: json['special_slay_mechanism'] as String? ?? "",
      successSlayReq: json['success_slay_req'] as String,
      successSlayBonus: json['success_slay_bonus'] as String? ?? "",
      failureSlayReq: json['failure_slay_req'] as String,
      failureSlayPenalty: json['failure_slay_penalty'] as String,
      rewardEffect: json['reward_effect'] as String,
    );

Map<String, dynamic> _$$MonsterCardImplToJson(_$MonsterCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img_url': instance.imgUrl,
      'type': cardTypeToJson(instance.cardType),
      'hero_req': instance.heroReq,
      'guardian_req': instance.guardianReq,
      'thief_req': instance.thiefReq,
      'wizard_req': instance.wizardReq,
      'fighter_req': instance.fighterReq,
      'bard_req': instance.bardReq,
      'ranger_req': instance.rangerReq,
      'additional_req': instance.additionalReq,
      'special_slay_mechanism': instance.specialSlayMechanism,
      'success_slay_req': instance.successSlayReq,
      'success_slay_bonus': instance.successSlayBonus,
      'failure_slay_req': instance.failureSlayReq,
      'failure_slay_penalty': instance.failureSlayPenalty,
      'reward_effect': instance.rewardEffect,
    };
