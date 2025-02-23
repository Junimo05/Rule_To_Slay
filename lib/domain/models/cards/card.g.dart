// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardModelImpl _$$CardModelImplFromJson(Map<String, dynamic> json) =>
    _$CardModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imgUrl: json['imgUrl'] as String,
      cardType: json['cardType'] == null
          ? CardType.UNKNOWN
          : cardTypeFromJson(json['cardType'] as String),
      verType: json['ver_type'] as String,
    );

Map<String, dynamic> _$$CardModelImplToJson(_$CardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imgUrl': instance.imgUrl,
      'cardType': cardTypeToJson(instance.cardType),
      'ver_type': instance.verType,
    };
