// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemCardImpl _$$ItemCardImplFromJson(Map<String, dynamic> json) =>
    _$ItemCardImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imgUrl: json['img_url'] as String,
      cardType: json['type'] == null
          ? CardType.ITEM
          : cardTypeFromJson(json['type'] as String),
      itemType: json['item_type'] as String,
      effect: json['effect'] as String,
      additionalRequire: json['additional_req'] as String?,
      verType: json['ver_type'] as String,
    );

Map<String, dynamic> _$$ItemCardImplToJson(_$ItemCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img_url': instance.imgUrl,
      'type': cardTypeToJson(instance.cardType),
      'item_type': instance.itemType,
      'effect': instance.effect,
      'additional_req': instance.additionalRequire,
      'ver_type': instance.verType,
    };
