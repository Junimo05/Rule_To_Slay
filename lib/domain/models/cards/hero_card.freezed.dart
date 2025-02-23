// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hero_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeroCard _$HeroCardFromJson(Map<String, dynamic> json) {
  return _HeroCard.fromJson(json);
}

/// @nodoc
mixin _$HeroCard {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'img_url')
  String get imgUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
  CardType get cardType => throw _privateConstructorUsedError;
  @JsonKey(name: 'class')
  String get classType => throw _privateConstructorUsedError;
  @JsonKey(name: 'success_roll')
  String get successDice => throw _privateConstructorUsedError;
  @JsonKey(name: 'effect')
  String get effect => throw _privateConstructorUsedError;
  @JsonKey(name: 'ver_type')
  String get verType => throw _privateConstructorUsedError;

  /// Serializes this HeroCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeroCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeroCardCopyWith<HeroCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroCardCopyWith<$Res> {
  factory $HeroCardCopyWith(HeroCard value, $Res Function(HeroCard) then) =
      _$HeroCardCopyWithImpl<$Res, HeroCard>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      CardType cardType,
      @JsonKey(name: 'class') String classType,
      @JsonKey(name: 'success_roll') String successDice,
      @JsonKey(name: 'effect') String effect,
      @JsonKey(name: 'ver_type') String verType});
}

/// @nodoc
class _$HeroCardCopyWithImpl<$Res, $Val extends HeroCard>
    implements $HeroCardCopyWith<$Res> {
  _$HeroCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeroCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? cardType = null,
    Object? classType = null,
    Object? successDice = null,
    Object? effect = null,
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
      successDice: null == successDice
          ? _value.successDice
          : successDice // ignore: cast_nullable_to_non_nullable
              as String,
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String,
      verType: null == verType
          ? _value.verType
          : verType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeroCardImplCopyWith<$Res>
    implements $HeroCardCopyWith<$Res> {
  factory _$$HeroCardImplCopyWith(
          _$HeroCardImpl value, $Res Function(_$HeroCardImpl) then) =
      __$$HeroCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      CardType cardType,
      @JsonKey(name: 'class') String classType,
      @JsonKey(name: 'success_roll') String successDice,
      @JsonKey(name: 'effect') String effect,
      @JsonKey(name: 'ver_type') String verType});
}

/// @nodoc
class __$$HeroCardImplCopyWithImpl<$Res>
    extends _$HeroCardCopyWithImpl<$Res, _$HeroCardImpl>
    implements _$$HeroCardImplCopyWith<$Res> {
  __$$HeroCardImplCopyWithImpl(
      _$HeroCardImpl _value, $Res Function(_$HeroCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeroCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? cardType = null,
    Object? classType = null,
    Object? successDice = null,
    Object? effect = null,
    Object? verType = null,
  }) {
    return _then(_$HeroCardImpl(
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
      successDice: null == successDice
          ? _value.successDice
          : successDice // ignore: cast_nullable_to_non_nullable
              as String,
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
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
class _$HeroCardImpl extends _HeroCard {
  const _$HeroCardImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'img_url') required this.imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      this.cardType = CardType.HERO,
      @JsonKey(name: 'class') required this.classType,
      @JsonKey(name: 'success_roll') required this.successDice,
      @JsonKey(name: 'effect') required this.effect,
      @JsonKey(name: 'ver_type') required this.verType})
      : super._();

  factory _$HeroCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeroCardImplFromJson(json);

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
  @JsonKey(name: 'success_roll')
  final String successDice;
  @override
  @JsonKey(name: 'effect')
  final String effect;
  @override
  @JsonKey(name: 'ver_type')
  final String verType;

  @override
  String toString() {
    return 'HeroCard(id: $id, name: $name, imgUrl: $imgUrl, cardType: $cardType, classType: $classType, successDice: $successDice, effect: $effect, verType: $verType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.classType, classType) ||
                other.classType == classType) &&
            (identical(other.successDice, successDice) ||
                other.successDice == successDice) &&
            (identical(other.effect, effect) || other.effect == effect) &&
            (identical(other.verType, verType) || other.verType == verType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imgUrl, cardType,
      classType, successDice, effect, verType);

  /// Create a copy of HeroCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroCardImplCopyWith<_$HeroCardImpl> get copyWith =>
      __$$HeroCardImplCopyWithImpl<_$HeroCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeroCardImplToJson(
      this,
    );
  }
}

abstract class _HeroCard extends HeroCard {
  const factory _HeroCard(
      {required final String id,
      required final String name,
      @JsonKey(name: 'img_url') required final String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      final CardType cardType,
      @JsonKey(name: 'class') required final String classType,
      @JsonKey(name: 'success_roll') required final String successDice,
      @JsonKey(name: 'effect') required final String effect,
      @JsonKey(name: 'ver_type')
      required final String verType}) = _$HeroCardImpl;
  const _HeroCard._() : super._();

  factory _HeroCard.fromJson(Map<String, dynamic> json) =
      _$HeroCardImpl.fromJson;

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
  @JsonKey(name: 'success_roll')
  String get successDice;
  @override
  @JsonKey(name: 'effect')
  String get effect;
  @override
  @JsonKey(name: 'ver_type')
  String get verType;

  /// Create a copy of HeroCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeroCardImplCopyWith<_$HeroCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
