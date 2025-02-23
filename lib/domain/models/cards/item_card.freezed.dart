// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemCard _$ItemCardFromJson(Map<String, dynamic> json) {
  return _ItemCard.fromJson(json);
}

/// @nodoc
mixin _$ItemCard {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'img_url')
  String get imgUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
  CardType get cardType => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_type')
  String get itemType => throw _privateConstructorUsedError;
  @JsonKey(name: 'effect')
  String get effect => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_req')
  String? get additionalRequire => throw _privateConstructorUsedError;
  @JsonKey(name: 'ver_type')
  String get verType => throw _privateConstructorUsedError;

  /// Serializes this ItemCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemCardCopyWith<ItemCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCardCopyWith<$Res> {
  factory $ItemCardCopyWith(ItemCard value, $Res Function(ItemCard) then) =
      _$ItemCardCopyWithImpl<$Res, ItemCard>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      CardType cardType,
      @JsonKey(name: 'item_type') String itemType,
      @JsonKey(name: 'effect') String effect,
      @JsonKey(name: 'additional_req') String? additionalRequire,
      @JsonKey(name: 'ver_type') String verType});
}

/// @nodoc
class _$ItemCardCopyWithImpl<$Res, $Val extends ItemCard>
    implements $ItemCardCopyWith<$Res> {
  _$ItemCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? cardType = null,
    Object? itemType = null,
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
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$ItemCardImplCopyWith<$Res>
    implements $ItemCardCopyWith<$Res> {
  factory _$$ItemCardImplCopyWith(
          _$ItemCardImpl value, $Res Function(_$ItemCardImpl) then) =
      __$$ItemCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      CardType cardType,
      @JsonKey(name: 'item_type') String itemType,
      @JsonKey(name: 'effect') String effect,
      @JsonKey(name: 'additional_req') String? additionalRequire,
      @JsonKey(name: 'ver_type') String verType});
}

/// @nodoc
class __$$ItemCardImplCopyWithImpl<$Res>
    extends _$ItemCardCopyWithImpl<$Res, _$ItemCardImpl>
    implements _$$ItemCardImplCopyWith<$Res> {
  __$$ItemCardImplCopyWithImpl(
      _$ItemCardImpl _value, $Res Function(_$ItemCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? cardType = null,
    Object? itemType = null,
    Object? effect = null,
    Object? additionalRequire = freezed,
    Object? verType = null,
  }) {
    return _then(_$ItemCardImpl(
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
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$ItemCardImpl extends _ItemCard {
  const _$ItemCardImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'img_url') required this.imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      this.cardType = CardType.ITEM,
      @JsonKey(name: 'item_type') required this.itemType,
      @JsonKey(name: 'effect') required this.effect,
      @JsonKey(name: 'additional_req') this.additionalRequire,
      @JsonKey(name: 'ver_type') required this.verType})
      : super._();

  factory _$ItemCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemCardImplFromJson(json);

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
  @JsonKey(name: 'item_type')
  final String itemType;
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
    return 'ItemCard(id: $id, name: $name, imgUrl: $imgUrl, cardType: $cardType, itemType: $itemType, effect: $effect, additionalRequire: $additionalRequire, verType: $verType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.itemType, itemType) ||
                other.itemType == itemType) &&
            (identical(other.effect, effect) || other.effect == effect) &&
            (identical(other.additionalRequire, additionalRequire) ||
                other.additionalRequire == additionalRequire) &&
            (identical(other.verType, verType) || other.verType == verType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imgUrl, cardType,
      itemType, effect, additionalRequire, verType);

  /// Create a copy of ItemCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemCardImplCopyWith<_$ItemCardImpl> get copyWith =>
      __$$ItemCardImplCopyWithImpl<_$ItemCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemCardImplToJson(
      this,
    );
  }
}

abstract class _ItemCard extends ItemCard {
  const factory _ItemCard(
      {required final String id,
      required final String name,
      @JsonKey(name: 'img_url') required final String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      final CardType cardType,
      @JsonKey(name: 'item_type') required final String itemType,
      @JsonKey(name: 'effect') required final String effect,
      @JsonKey(name: 'additional_req') final String? additionalRequire,
      @JsonKey(name: 'ver_type')
      required final String verType}) = _$ItemCardImpl;
  const _ItemCard._() : super._();

  factory _ItemCard.fromJson(Map<String, dynamic> json) =
      _$ItemCardImpl.fromJson;

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
  @JsonKey(name: 'item_type')
  String get itemType;
  @override
  @JsonKey(name: 'effect')
  String get effect;
  @override
  @JsonKey(name: 'additional_req')
  String? get additionalRequire;
  @override
  @JsonKey(name: 'ver_type')
  String get verType;

  /// Create a copy of ItemCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemCardImplCopyWith<_$ItemCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
