// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChallengeCardImpl _$$ChallengeCardImplFromJson(Map<String, dynamic> json) =>
    _$ChallengeCardImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imgUrl: json['img_url'] as String,
      cardType: json['type'] == null
          ? CardType.CHALLENGE
          : cardTypeFromJson(json['type'] as String),
      effect: json['effect'] as String,
      additionalRequire: json['additional_req'] as String?,
    );

Map<String, dynamic> _$$ChallengeCardImplToJson(_$ChallengeCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img_url': instance.imgUrl,
      'type': cardTypeToJson(instance.cardType),
      'effect': instance.effect,
      'additional_req': instance.additionalRequire,
    };
