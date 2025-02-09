// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'magic_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MagicCardImpl _$$MagicCardImplFromJson(Map<String, dynamic> json) =>
    _$MagicCardImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imgUrl: json['img_url'] as String,
      cardType: json['type'] == null
          ? CardType.MAGIC
          : cardTypeFromJson(json['type'] as String),
      effect: json['effect'] as String,
      additionalRequire: json['additional_req'] as String?,
    );

Map<String, dynamic> _$$MagicCardImplToJson(_$MagicCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img_url': instance.imgUrl,
      'type': cardTypeToJson(instance.cardType),
      'effect': instance.effect,
      'additional_req': instance.additionalRequire,
    };
