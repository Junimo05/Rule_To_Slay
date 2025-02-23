// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModifierCardImpl _$$ModifierCardImplFromJson(Map<String, dynamic> json) =>
    _$ModifierCardImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imgUrl: json['img_url'] as String,
      cardType: json['type'] == null
          ? CardType.MODIFIER
          : cardTypeFromJson(json['type'] as String),
      verType: json['ver_type'] as String,
      plus: json['plus'] as String? ?? "",
      minus: json['minus'] as String? ?? "",
      additionalInfo: json['additional_info'] as String?,
    );

Map<String, dynamic> _$$ModifierCardImplToJson(_$ModifierCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img_url': instance.imgUrl,
      'type': cardTypeToJson(instance.cardType),
      'ver_type': instance.verType,
      'plus': instance.plus,
      'minus': instance.minus,
      'additional_info': instance.additionalInfo,
    };
