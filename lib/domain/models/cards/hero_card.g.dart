// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeroCardImpl _$$HeroCardImplFromJson(Map<String, dynamic> json) =>
    _$HeroCardImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imgUrl: json['img_url'] as String,
      cardType: json['type'] == null
          ? CardType.HERO
          : cardTypeFromJson(json['type'] as String),
      classType: json['class'] as String,
      successDice: json['success_roll'] as String,
      effect: json['effect'] as String,
    );

Map<String, dynamic> _$$HeroCardImplToJson(_$HeroCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img_url': instance.imgUrl,
      'type': cardTypeToJson(instance.cardType),
      'class': instance.classType,
      'success_roll': instance.successDice,
      'effect': instance.effect,
    };
