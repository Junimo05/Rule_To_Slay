// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'magic_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MagicCard _$MagicCardFromJson(Map<String, dynamic> json) {
  return _MagicCard.fromJson(json);
}

/// @nodoc
mixin _$MagicCard {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'img_url')
  String get imgUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
  CardType get cardType => throw _privateConstructorUsedError;
  @JsonKey(name: 'effect')
  String get effect => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_req')
  String? get additionalRequire => throw _privateConstructorUsedError;
  @JsonKey(name: 'ver_type')
  String get verType => throw _privateConstructorUsedError;

  /// Serializes this MagicCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MagicCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MagicCardCopyWith<MagicCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MagicCardCopyWith<$Res> {
  factory $MagicCardCopyWith(MagicCard value, $Res Function(MagicCard) then) =
      _$MagicCardCopyWithImpl<$Res, MagicCard>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      CardType cardType,
      @JsonKey(name: 'effect') String effect,
      @JsonKey(name: 'additional_req') String? additionalRequire,
      @JsonKey(name: 'ver_type') String verType});
}

/// @nodoc
class _$MagicCardCopyWithImpl<$Res, $Val extends MagicCard>
    implements $MagicCardCopyWith<$Res> {
  _$MagicCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MagicCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? cardType = null,
    Object? effect = null,
    Object? additionalRequire = freezed,
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
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String,
      additionalRequire: freezed == additionalRequire
          ? _value.additionalRequire
          : additionalRequire // ignore: cast_nullable_to_non_nullable
              as String?,
      verType: null == verType
          ? _value.verType
          : verType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MagicCardImplCopyWith<$Res>
    implements $MagicCardCopyWith<$Res> {
  factory _$$MagicCardImplCopyWith(
          _$MagicCardImpl value, $Res Function(_$MagicCardImpl) then) =
      __$$MagicCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      CardType cardType,
      @JsonKey(name: 'effect') String effect,
      @JsonKey(name: 'additional_req') String? additionalRequire,
      @JsonKey(name: 'ver_type') String verType});
}

/// @nodoc
class __$$MagicCardImplCopyWithImpl<$Res>
    extends _$MagicCardCopyWithImpl<$Res, _$MagicCardImpl>
    implements _$$MagicCardImplCopyWith<$Res> {
  __$$MagicCardImplCopyWithImpl(
      _$MagicCardImpl _value, $Res Function(_$MagicCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of MagicCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? cardType = null,
    Object? effect = null,
    Object? additionalRequire = freezed,
    Object? verType = null,
  }) {
    return _then(_$MagicCardImpl(
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
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String,
      additionalRequire: freezed == additionalRequire
          ? _value.additionalRequire
          : additionalRequire // ignore: cast_nullable_to_non_nullable
              as String?,
      verType: null == verType
          ? _value.verType
          : verType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MagicCardImpl extends _MagicCard {
  const _$MagicCardImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'img_url') required this.imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      this.cardType = CardType.MAGIC,
      @JsonKey(name: 'effect') required this.effect,
      @JsonKey(name: 'additional_req') this.additionalRequire,
      @JsonKey(name: 'ver_type') required this.verType})
      : super._();

  factory _$MagicCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$MagicCardImplFromJson(json);

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
  @JsonKey(name: 'effect')
  final String effect;
  @override
  @JsonKey(name: 'additional_req')
  final String? additionalRequire;
  @override
  @JsonKey(name: 'ver_type')
  final String verType;

  @override
  String toString() {
    return 'MagicCard(id: $id, name: $name, imgUrl: $imgUrl, cardType: $cardType, effect: $effect, additionalRequire: $additionalRequire, verType: $verType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MagicCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.effect, effect) || other.effect == effect) &&
            (identical(other.additionalRequire, additionalRequire) ||
                other.additionalRequire == additionalRequire) &&
            (identical(other.verType, verType) || other.verType == verType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imgUrl, cardType,
      effect, additionalRequire, verType);

  /// Create a copy of MagicCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MagicCardImplCopyWith<_$MagicCardImpl> get copyWith =>
      __$$MagicCardImplCopyWithImpl<_$MagicCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MagicCardImplToJson(
      this,
    );
  }
}

abstract class _MagicCard extends MagicCard {
  const factory _MagicCard(
      {required final String id,
      required final String name,
      @JsonKey(name: 'img_url') required final String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      final CardType cardType,
      @JsonKey(name: 'effect') required final String effect,
      @JsonKey(name: 'additional_req') final String? additionalRequire,
      @JsonKey(name: 'ver_type')
      required final String verType}) = _$MagicCardImpl;
  const _MagicCard._() : super._();

  factory _MagicCard.fromJson(Map<String, dynamic> json) =
      _$MagicCardImpl.fromJson;

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
  @JsonKey(name: 'effect')
  String get effect;
  @override
  @JsonKey(name: 'additional_req')
  String? get additionalRequire;
  @override
  @JsonKey(name: 'ver_type')
  String get verType;

  /// Create a copy of MagicCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MagicCardImplCopyWith<_$MagicCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
