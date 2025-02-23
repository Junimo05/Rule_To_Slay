// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leader_party_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaderPartyCardImpl _$$LeaderPartyCardImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderPartyCardImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imgUrl: json['img_url'] as String,
      cardType: json['type'] == null
          ? CardType.PARTY_LEADER
          : cardTypeFromJson(json['type'] as String),
      classType: json['class'] as String,
      aura: json['aura'] as String,
      verType: json['ver_type'] as String,
    );

Map<String, dynamic> _$$LeaderPartyCardImplToJson(
        _$LeaderPartyCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img_url': instance.imgUrl,
      'type': cardTypeToJson(instance.cardType),
      'class': instance.classType,
      'aura': instance.aura,
      'ver_type': instance.verType,
    };
