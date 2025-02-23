// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leader_party_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartyLeaderCard _$PartyLeaderCardFromJson(Map<String, dynamic> json) {
  return _LeaderPartyCard.fromJson(json);
}

/// @nodoc
mixin _$PartyLeaderCard {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'img_url')
  String get imgUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
  CardType get cardType => throw _privateConstructorUsedError;
  @JsonKey(name: 'class')
  String get classType => throw _privateConstructorUsedError;
  @JsonKey(name: 'aura')
  String get aura => throw _privateConstructorUsedError;
  @JsonKey(name: 'ver_type')
  String get verType => throw _privateConstructorUsedError;

  /// Serializes this PartyLeaderCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartyLeaderCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartyLeaderCardCopyWith<PartyLeaderCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartyLeaderCardCopyWith<$Res> {
  factory $PartyLeaderCardCopyWith(
          PartyLeaderCard value, $Res Function(PartyLeaderCard) then) =
      _$PartyLeaderCardCopyWithImpl<$Res, PartyLeaderCard>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      CardType cardType,
      @JsonKey(name: 'class') String classType,
      @JsonKey(name: 'aura') String aura,
      @JsonKey(name: 'ver_type') String verType});
}

/// @nodoc
class _$PartyLeaderCardCopyWithImpl<$Res, $Val extends PartyLeaderCard>
    implements $PartyLeaderCardCopyWith<$Res> {
  _$PartyLeaderCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartyLeaderCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? cardType = null,
    Object? classType = null,
    Object? aura = null,
    Object? verType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      classType: null == classType
          ? _value.classType
          : classType // ignore: cast_nullable_to_non_nullable
              as String,
      aura: null == aura
          ? _value.aura
          : aura // ignore: cast_nullable_to_non_nullable
              as String,
      verType: null == verType
          ? _value.verType
          : verType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderPartyCardImplCopyWith<$Res>
    implements $PartyLeaderCardCopyWith<$Res> {
  factory _$$LeaderPartyCardImplCopyWith(_$LeaderPartyCardImpl value,
          $Res Function(_$LeaderPartyCardImpl) then) =
      __$$LeaderPartyCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      CardType cardType,
      @JsonKey(name: 'class') String classType,
      @JsonKey(name: 'aura') String aura,
      @JsonKey(name: 'ver_type') String verType});
}

/// @nodoc
class __$$LeaderPartyCardImplCopyWithImpl<$Res>
    extends _$PartyLeaderCardCopyWithImpl<$Res, _$LeaderPartyCardImpl>
    implements _$$LeaderPartyCardImplCopyWith<$Res> {
  __$$LeaderPartyCardImplCopyWithImpl(
      _$LeaderPartyCardImpl _value, $Res Function(_$LeaderPartyCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartyLeaderCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? cardType = null,
    Object? classType = null,
    Object? aura = null,
    Object? verType = null,
  }) {
    return _then(_$LeaderPartyCardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      classType: null == classType
          ? _value.classType
          : classType // ignore: cast_nullable_to_non_nullable
              as String,
      aura: null == aura
          ? _value.aura
          : aura // ignore: cast_nullable_to_non_nullable
              as String,
      verType: null == verType
          ? _value.verType
          : verType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderPartyCardImpl extends _LeaderPartyCard {
  const _$LeaderPartyCardImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'img_url') required this.imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      this.cardType = CardType.PARTY_LEADER,
      @JsonKey(name: 'class') required this.classType,
      @JsonKey(name: 'aura') required this.aura,
      @JsonKey(name: 'ver_type') required this.verType})
      : super._();

  factory _$LeaderPartyCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderPartyCardImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'img_url')
  final String imgUrl;
  @override
  @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
  final CardType cardType;
  @override
  @JsonKey(name: 'class')
  final String classType;
  @override
  @JsonKey(name: 'aura')
  final String aura;
  @override
  @JsonKey(name: 'ver_type')
  final String verType;

  @override
  String toString() {
    return 'PartyLeaderCard(id: $id, name: $name, imgUrl: $imgUrl, cardType: $cardType, classType: $classType, aura: $aura, verType: $verType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderPartyCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.classType, classType) ||
                other.classType == classType) &&
            (identical(other.aura, aura) || other.aura == aura) &&
            (identical(other.verType, verType) || other.verType == verType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, imgUrl, cardType, classType, aura, verType);

  /// Create a copy of PartyLeaderCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderPartyCardImplCopyWith<_$LeaderPartyCardImpl> get copyWith =>
      __$$LeaderPartyCardImplCopyWithImpl<_$LeaderPartyCardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderPartyCardImplToJson(
      this,
    );
  }
}

abstract class _LeaderPartyCard extends PartyLeaderCard {
  const factory _LeaderPartyCard(
      {required final String id,
      required final String name,
      @JsonKey(name: 'img_url') required final String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      final CardType cardType,
      @JsonKey(name: 'class') required final String classType,
      @JsonKey(name: 'aura') required final String aura,
      @JsonKey(name: 'ver_type')
      required final String verType}) = _$LeaderPartyCardImpl;
  const _LeaderPartyCard._() : super._();

  factory _LeaderPartyCard.fromJson(Map<String, dynamic> json) =
      _$LeaderPartyCardImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'img_url')
  String get imgUrl;
  @override
  @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
  CardType get cardType;
  @override
  @JsonKey(name: 'class')
  String get classType;
  @override
  @JsonKey(name: 'aura')
  String get aura;
  @override
  @JsonKey(name: 'ver_type')
  String get verType;

  /// Create a copy of PartyLeaderCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderPartyCardImplCopyWith<_$LeaderPartyCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
