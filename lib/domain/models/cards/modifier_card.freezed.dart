// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modifier_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModifierCard _$ModifierCardFromJson(Map<String, dynamic> json) {
  return _ModifierCard.fromJson(json);
}

/// @nodoc
mixin _$ModifierCard {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'img_url')
  String get imgUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
  CardType get cardType => throw _privateConstructorUsedError;
  @JsonKey(name: 'ver_type')
  String get verType => throw _privateConstructorUsedError; //Info
  @JsonKey(name: 'plus')
  String? get plus => throw _privateConstructorUsedError;
  @JsonKey(name: 'minus')
  String? get minus => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_info')
  String? get additionalInfo => throw _privateConstructorUsedError;

  /// Serializes this ModifierCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModifierCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModifierCardCopyWith<ModifierCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifierCardCopyWith<$Res> {
  factory $ModifierCardCopyWith(
          ModifierCard value, $Res Function(ModifierCard) then) =
      _$ModifierCardCopyWithImpl<$Res, ModifierCard>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      CardType cardType,
      @JsonKey(name: 'ver_type') String verType,
      @JsonKey(name: 'plus') String? plus,
      @JsonKey(name: 'minus') String? minus,
      @JsonKey(name: 'additional_info') String? additionalInfo});
}

/// @nodoc
class _$ModifierCardCopyWithImpl<$Res, $Val extends ModifierCard>
    implements $ModifierCardCopyWith<$Res> {
  _$ModifierCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModifierCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? cardType = null,
    Object? verType = null,
    Object? plus = freezed,
    Object? minus = freezed,
    Object? additionalInfo = freezed,
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
      verType: null == verType
          ? _value.verType
          : verType // ignore: cast_nullable_to_non_nullable
              as String,
      plus: freezed == plus
          ? _value.plus
          : plus // ignore: cast_nullable_to_non_nullable
              as String?,
      minus: freezed == minus
          ? _value.minus
          : minus // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModifierCardImplCopyWith<$Res>
    implements $ModifierCardCopyWith<$Res> {
  factory _$$ModifierCardImplCopyWith(
          _$ModifierCardImpl value, $Res Function(_$ModifierCardImpl) then) =
      __$$ModifierCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      CardType cardType,
      @JsonKey(name: 'ver_type') String verType,
      @JsonKey(name: 'plus') String? plus,
      @JsonKey(name: 'minus') String? minus,
      @JsonKey(name: 'additional_info') String? additionalInfo});
}

/// @nodoc
class __$$ModifierCardImplCopyWithImpl<$Res>
    extends _$ModifierCardCopyWithImpl<$Res, _$ModifierCardImpl>
    implements _$$ModifierCardImplCopyWith<$Res> {
  __$$ModifierCardImplCopyWithImpl(
      _$ModifierCardImpl _value, $Res Function(_$ModifierCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModifierCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? cardType = null,
    Object? verType = null,
    Object? plus = freezed,
    Object? minus = freezed,
    Object? additionalInfo = freezed,
  }) {
    return _then(_$ModifierCardImpl(
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
      verType: null == verType
          ? _value.verType
          : verType // ignore: cast_nullable_to_non_nullable
              as String,
      plus: freezed == plus
          ? _value.plus
          : plus // ignore: cast_nullable_to_non_nullable
              as String?,
      minus: freezed == minus
          ? _value.minus
          : minus // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModifierCardImpl extends _ModifierCard {
  const _$ModifierCardImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'img_url') required this.imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      this.cardType = CardType.MODIFIER,
      @JsonKey(name: 'ver_type') required this.verType,
      @JsonKey(name: 'plus') this.plus = "",
      @JsonKey(name: 'minus') this.minus = "",
      @JsonKey(name: 'additional_info') this.additionalInfo})
      : super._();

  factory _$ModifierCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModifierCardImplFromJson(json);

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
  @JsonKey(name: 'ver_type')
  final String verType;
//Info
  @override
  @JsonKey(name: 'plus')
  final String? plus;
  @override
  @JsonKey(name: 'minus')
  final String? minus;
  @override
  @JsonKey(name: 'additional_info')
  final String? additionalInfo;

  @override
  String toString() {
    return 'ModifierCard(id: $id, name: $name, imgUrl: $imgUrl, cardType: $cardType, verType: $verType, plus: $plus, minus: $minus, additionalInfo: $additionalInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModifierCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.verType, verType) || other.verType == verType) &&
            (identical(other.plus, plus) || other.plus == plus) &&
            (identical(other.minus, minus) || other.minus == minus) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imgUrl, cardType,
      verType, plus, minus, additionalInfo);

  /// Create a copy of ModifierCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModifierCardImplCopyWith<_$ModifierCardImpl> get copyWith =>
      __$$ModifierCardImplCopyWithImpl<_$ModifierCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModifierCardImplToJson(
      this,
    );
  }
}

abstract class _ModifierCard extends ModifierCard {
  const factory _ModifierCard(
      {required final String id,
      required final String name,
      @JsonKey(name: 'img_url') required final String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      final CardType cardType,
      @JsonKey(name: 'ver_type') required final String verType,
      @JsonKey(name: 'plus') final String? plus,
      @JsonKey(name: 'minus') final String? minus,
      @JsonKey(name: 'additional_info')
      final String? additionalInfo}) = _$ModifierCardImpl;
  const _ModifierCard._() : super._();

  factory _ModifierCard.fromJson(Map<String, dynamic> json) =
      _$ModifierCardImpl.fromJson;

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
  @JsonKey(name: 'ver_type')
  String get verType; //Info
  @override
  @JsonKey(name: 'plus')
  String? get plus;
  @override
  @JsonKey(name: 'minus')
  String? get minus;
  @override
  @JsonKey(name: 'additional_info')
  String? get additionalInfo;

  /// Create a copy of ModifierCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModifierCardImplCopyWith<_$ModifierCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
