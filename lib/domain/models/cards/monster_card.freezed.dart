// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monster_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MonsterCard _$MonsterCardFromJson(Map<String, dynamic> json) {
  return _MonsterCard.fromJson(json);
}

/// @nodoc
mixin _$MonsterCard {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'img_url')
  String get imgUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
  CardType get cardType => throw _privateConstructorUsedError; //Slay conditions
  @JsonKey(name: 'hero_req')
  int get heroReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'guardian_req')
  int? get guardianReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'thief_req')
  int? get thiefReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'wizard_req')
  int? get wizardReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'fighter_req')
  int? get fighterReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'bard_req')
  int? get bardReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'ranger_req')
  int? get rangerReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_req')
  String? get additionalReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'special_slay_mechanism')
  String? get specialSlayMechanism =>
      throw _privateConstructorUsedError; //Slay Results
  @JsonKey(name: 'success_slay_req')
  String get successSlayReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'success_slay_bonus')
  String? get successSlayBonus => throw _privateConstructorUsedError;
  @JsonKey(name: 'failure_slay_req')
  String get failureSlayReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'failure_slay_penalty')
  String get failureSlayPenalty => throw _privateConstructorUsedError;
  @JsonKey(name: 'reward_effect')
  String get rewardEffect => throw _privateConstructorUsedError;

  /// Serializes this MonsterCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonsterCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonsterCardCopyWith<MonsterCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonsterCardCopyWith<$Res> {
  factory $MonsterCardCopyWith(
          MonsterCard value, $Res Function(MonsterCard) then) =
      _$MonsterCardCopyWithImpl<$Res, MonsterCard>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      CardType cardType,
      @JsonKey(name: 'hero_req') int heroReq,
      @JsonKey(name: 'guardian_req') int? guardianReq,
      @JsonKey(name: 'thief_req') int? thiefReq,
      @JsonKey(name: 'wizard_req') int? wizardReq,
      @JsonKey(name: 'fighter_req') int? fighterReq,
      @JsonKey(name: 'bard_req') int? bardReq,
      @JsonKey(name: 'ranger_req') int? rangerReq,
      @JsonKey(name: 'additional_req') String? additionalReq,
      @JsonKey(name: 'special_slay_mechanism') String? specialSlayMechanism,
      @JsonKey(name: 'success_slay_req') String successSlayReq,
      @JsonKey(name: 'success_slay_bonus') String? successSlayBonus,
      @JsonKey(name: 'failure_slay_req') String failureSlayReq,
      @JsonKey(name: 'failure_slay_penalty') String failureSlayPenalty,
      @JsonKey(name: 'reward_effect') String rewardEffect});
}

/// @nodoc
class _$MonsterCardCopyWithImpl<$Res, $Val extends MonsterCard>
    implements $MonsterCardCopyWith<$Res> {
  _$MonsterCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonsterCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? cardType = null,
    Object? heroReq = null,
    Object? guardianReq = freezed,
    Object? thiefReq = freezed,
    Object? wizardReq = freezed,
    Object? fighterReq = freezed,
    Object? bardReq = freezed,
    Object? rangerReq = freezed,
    Object? additionalReq = freezed,
    Object? specialSlayMechanism = freezed,
    Object? successSlayReq = null,
    Object? successSlayBonus = freezed,
    Object? failureSlayReq = null,
    Object? failureSlayPenalty = null,
    Object? rewardEffect = null,
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
      heroReq: null == heroReq
          ? _value.heroReq
          : heroReq // ignore: cast_nullable_to_non_nullable
              as int,
      guardianReq: freezed == guardianReq
          ? _value.guardianReq
          : guardianReq // ignore: cast_nullable_to_non_nullable
              as int?,
      thiefReq: freezed == thiefReq
          ? _value.thiefReq
          : thiefReq // ignore: cast_nullable_to_non_nullable
              as int?,
      wizardReq: freezed == wizardReq
          ? _value.wizardReq
          : wizardReq // ignore: cast_nullable_to_non_nullable
              as int?,
      fighterReq: freezed == fighterReq
          ? _value.fighterReq
          : fighterReq // ignore: cast_nullable_to_non_nullable
              as int?,
      bardReq: freezed == bardReq
          ? _value.bardReq
          : bardReq // ignore: cast_nullable_to_non_nullable
              as int?,
      rangerReq: freezed == rangerReq
          ? _value.rangerReq
          : rangerReq // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalReq: freezed == additionalReq
          ? _value.additionalReq
          : additionalReq // ignore: cast_nullable_to_non_nullable
              as String?,
      specialSlayMechanism: freezed == specialSlayMechanism
          ? _value.specialSlayMechanism
          : specialSlayMechanism // ignore: cast_nullable_to_non_nullable
              as String?,
      successSlayReq: null == successSlayReq
          ? _value.successSlayReq
          : successSlayReq // ignore: cast_nullable_to_non_nullable
              as String,
      successSlayBonus: freezed == successSlayBonus
          ? _value.successSlayBonus
          : successSlayBonus // ignore: cast_nullable_to_non_nullable
              as String?,
      failureSlayReq: null == failureSlayReq
          ? _value.failureSlayReq
          : failureSlayReq // ignore: cast_nullable_to_non_nullable
              as String,
      failureSlayPenalty: null == failureSlayPenalty
          ? _value.failureSlayPenalty
          : failureSlayPenalty // ignore: cast_nullable_to_non_nullable
              as String,
      rewardEffect: null == rewardEffect
          ? _value.rewardEffect
          : rewardEffect // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonsterCardImplCopyWith<$Res>
    implements $MonsterCardCopyWith<$Res> {
  factory _$$MonsterCardImplCopyWith(
          _$MonsterCardImpl value, $Res Function(_$MonsterCardImpl) then) =
      __$$MonsterCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      CardType cardType,
      @JsonKey(name: 'hero_req') int heroReq,
      @JsonKey(name: 'guardian_req') int? guardianReq,
      @JsonKey(name: 'thief_req') int? thiefReq,
      @JsonKey(name: 'wizard_req') int? wizardReq,
      @JsonKey(name: 'fighter_req') int? fighterReq,
      @JsonKey(name: 'bard_req') int? bardReq,
      @JsonKey(name: 'ranger_req') int? rangerReq,
      @JsonKey(name: 'additional_req') String? additionalReq,
      @JsonKey(name: 'special_slay_mechanism') String? specialSlayMechanism,
      @JsonKey(name: 'success_slay_req') String successSlayReq,
      @JsonKey(name: 'success_slay_bonus') String? successSlayBonus,
      @JsonKey(name: 'failure_slay_req') String failureSlayReq,
      @JsonKey(name: 'failure_slay_penalty') String failureSlayPenalty,
      @JsonKey(name: 'reward_effect') String rewardEffect});
}

/// @nodoc
class __$$MonsterCardImplCopyWithImpl<$Res>
    extends _$MonsterCardCopyWithImpl<$Res, _$MonsterCardImpl>
    implements _$$MonsterCardImplCopyWith<$Res> {
  __$$MonsterCardImplCopyWithImpl(
      _$MonsterCardImpl _value, $Res Function(_$MonsterCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonsterCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? cardType = null,
    Object? heroReq = null,
    Object? guardianReq = freezed,
    Object? thiefReq = freezed,
    Object? wizardReq = freezed,
    Object? fighterReq = freezed,
    Object? bardReq = freezed,
    Object? rangerReq = freezed,
    Object? additionalReq = freezed,
    Object? specialSlayMechanism = freezed,
    Object? successSlayReq = null,
    Object? successSlayBonus = freezed,
    Object? failureSlayReq = null,
    Object? failureSlayPenalty = null,
    Object? rewardEffect = null,
  }) {
    return _then(_$MonsterCardImpl(
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
      heroReq: null == heroReq
          ? _value.heroReq
          : heroReq // ignore: cast_nullable_to_non_nullable
              as int,
      guardianReq: freezed == guardianReq
          ? _value.guardianReq
          : guardianReq // ignore: cast_nullable_to_non_nullable
              as int?,
      thiefReq: freezed == thiefReq
          ? _value.thiefReq
          : thiefReq // ignore: cast_nullable_to_non_nullable
              as int?,
      wizardReq: freezed == wizardReq
          ? _value.wizardReq
          : wizardReq // ignore: cast_nullable_to_non_nullable
              as int?,
      fighterReq: freezed == fighterReq
          ? _value.fighterReq
          : fighterReq // ignore: cast_nullable_to_non_nullable
              as int?,
      bardReq: freezed == bardReq
          ? _value.bardReq
          : bardReq // ignore: cast_nullable_to_non_nullable
              as int?,
      rangerReq: freezed == rangerReq
          ? _value.rangerReq
          : rangerReq // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalReq: freezed == additionalReq
          ? _value.additionalReq
          : additionalReq // ignore: cast_nullable_to_non_nullable
              as String?,
      specialSlayMechanism: freezed == specialSlayMechanism
          ? _value.specialSlayMechanism
          : specialSlayMechanism // ignore: cast_nullable_to_non_nullable
              as String?,
      successSlayReq: null == successSlayReq
          ? _value.successSlayReq
          : successSlayReq // ignore: cast_nullable_to_non_nullable
              as String,
      successSlayBonus: freezed == successSlayBonus
          ? _value.successSlayBonus
          : successSlayBonus // ignore: cast_nullable_to_non_nullable
              as String?,
      failureSlayReq: null == failureSlayReq
          ? _value.failureSlayReq
          : failureSlayReq // ignore: cast_nullable_to_non_nullable
              as String,
      failureSlayPenalty: null == failureSlayPenalty
          ? _value.failureSlayPenalty
          : failureSlayPenalty // ignore: cast_nullable_to_non_nullable
              as String,
      rewardEffect: null == rewardEffect
          ? _value.rewardEffect
          : rewardEffect // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonsterCardImpl implements _MonsterCard {
  const _$MonsterCardImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'img_url') required this.imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      this.cardType = CardType.MONSTER,
      @JsonKey(name: 'hero_req') required this.heroReq,
      @JsonKey(name: 'guardian_req') this.guardianReq = 0,
      @JsonKey(name: 'thief_req') this.thiefReq = 0,
      @JsonKey(name: 'wizard_req') this.wizardReq = 0,
      @JsonKey(name: 'fighter_req') this.fighterReq = 0,
      @JsonKey(name: 'bard_req') this.bardReq = 0,
      @JsonKey(name: 'ranger_req') this.rangerReq = 0,
      @JsonKey(name: 'additional_req') this.additionalReq = "",
      @JsonKey(name: 'special_slay_mechanism') this.specialSlayMechanism = "",
      @JsonKey(name: 'success_slay_req') required this.successSlayReq,
      @JsonKey(name: 'success_slay_bonus') this.successSlayBonus = "",
      @JsonKey(name: 'failure_slay_req') required this.failureSlayReq,
      @JsonKey(name: 'failure_slay_penalty') required this.failureSlayPenalty,
      @JsonKey(name: 'reward_effect') required this.rewardEffect});

  factory _$MonsterCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonsterCardImplFromJson(json);

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
//Slay conditions
  @override
  @JsonKey(name: 'hero_req')
  final int heroReq;
  @override
  @JsonKey(name: 'guardian_req')
  final int? guardianReq;
  @override
  @JsonKey(name: 'thief_req')
  final int? thiefReq;
  @override
  @JsonKey(name: 'wizard_req')
  final int? wizardReq;
  @override
  @JsonKey(name: 'fighter_req')
  final int? fighterReq;
  @override
  @JsonKey(name: 'bard_req')
  final int? bardReq;
  @override
  @JsonKey(name: 'ranger_req')
  final int? rangerReq;
  @override
  @JsonKey(name: 'additional_req')
  final String? additionalReq;
  @override
  @JsonKey(name: 'special_slay_mechanism')
  final String? specialSlayMechanism;
//Slay Results
  @override
  @JsonKey(name: 'success_slay_req')
  final String successSlayReq;
  @override
  @JsonKey(name: 'success_slay_bonus')
  final String? successSlayBonus;
  @override
  @JsonKey(name: 'failure_slay_req')
  final String failureSlayReq;
  @override
  @JsonKey(name: 'failure_slay_penalty')
  final String failureSlayPenalty;
  @override
  @JsonKey(name: 'reward_effect')
  final String rewardEffect;

  @override
  String toString() {
    return 'MonsterCard(id: $id, name: $name, imgUrl: $imgUrl, cardType: $cardType, heroReq: $heroReq, guardianReq: $guardianReq, thiefReq: $thiefReq, wizardReq: $wizardReq, fighterReq: $fighterReq, bardReq: $bardReq, rangerReq: $rangerReq, additionalReq: $additionalReq, specialSlayMechanism: $specialSlayMechanism, successSlayReq: $successSlayReq, successSlayBonus: $successSlayBonus, failureSlayReq: $failureSlayReq, failureSlayPenalty: $failureSlayPenalty, rewardEffect: $rewardEffect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonsterCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.heroReq, heroReq) || other.heroReq == heroReq) &&
            (identical(other.guardianReq, guardianReq) ||
                other.guardianReq == guardianReq) &&
            (identical(other.thiefReq, thiefReq) ||
                other.thiefReq == thiefReq) &&
            (identical(other.wizardReq, wizardReq) ||
                other.wizardReq == wizardReq) &&
            (identical(other.fighterReq, fighterReq) ||
                other.fighterReq == fighterReq) &&
            (identical(other.bardReq, bardReq) || other.bardReq == bardReq) &&
            (identical(other.rangerReq, rangerReq) ||
                other.rangerReq == rangerReq) &&
            (identical(other.additionalReq, additionalReq) ||
                other.additionalReq == additionalReq) &&
            (identical(other.specialSlayMechanism, specialSlayMechanism) ||
                other.specialSlayMechanism == specialSlayMechanism) &&
            (identical(other.successSlayReq, successSlayReq) ||
                other.successSlayReq == successSlayReq) &&
            (identical(other.successSlayBonus, successSlayBonus) ||
                other.successSlayBonus == successSlayBonus) &&
            (identical(other.failureSlayReq, failureSlayReq) ||
                other.failureSlayReq == failureSlayReq) &&
            (identical(other.failureSlayPenalty, failureSlayPenalty) ||
                other.failureSlayPenalty == failureSlayPenalty) &&
            (identical(other.rewardEffect, rewardEffect) ||
                other.rewardEffect == rewardEffect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      imgUrl,
      cardType,
      heroReq,
      guardianReq,
      thiefReq,
      wizardReq,
      fighterReq,
      bardReq,
      rangerReq,
      additionalReq,
      specialSlayMechanism,
      successSlayReq,
      successSlayBonus,
      failureSlayReq,
      failureSlayPenalty,
      rewardEffect);

  /// Create a copy of MonsterCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonsterCardImplCopyWith<_$MonsterCardImpl> get copyWith =>
      __$$MonsterCardImplCopyWithImpl<_$MonsterCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonsterCardImplToJson(
      this,
    );
  }
}

abstract class _MonsterCard implements MonsterCard {
  const factory _MonsterCard(
      {required final String id,
      required final String name,
      @JsonKey(name: 'img_url') required final String imgUrl,
      @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
      final CardType cardType,
      @JsonKey(name: 'hero_req') required final int heroReq,
      @JsonKey(name: 'guardian_req') final int? guardianReq,
      @JsonKey(name: 'thief_req') final int? thiefReq,
      @JsonKey(name: 'wizard_req') final int? wizardReq,
      @JsonKey(name: 'fighter_req') final int? fighterReq,
      @JsonKey(name: 'bard_req') final int? bardReq,
      @JsonKey(name: 'ranger_req') final int? rangerReq,
      @JsonKey(name: 'additional_req') final String? additionalReq,
      @JsonKey(name: 'special_slay_mechanism')
      final String? specialSlayMechanism,
      @JsonKey(name: 'success_slay_req') required final String successSlayReq,
      @JsonKey(name: 'success_slay_bonus') final String? successSlayBonus,
      @JsonKey(name: 'failure_slay_req') required final String failureSlayReq,
      @JsonKey(name: 'failure_slay_penalty')
      required final String failureSlayPenalty,
      @JsonKey(name: 'reward_effect')
      required final String rewardEffect}) = _$MonsterCardImpl;

  factory _MonsterCard.fromJson(Map<String, dynamic> json) =
      _$MonsterCardImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'img_url')
  String get imgUrl;
  @override
  @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
  CardType get cardType; //Slay conditions
  @override
  @JsonKey(name: 'hero_req')
  int get heroReq;
  @override
  @JsonKey(name: 'guardian_req')
  int? get guardianReq;
  @override
  @JsonKey(name: 'thief_req')
  int? get thiefReq;
  @override
  @JsonKey(name: 'wizard_req')
  int? get wizardReq;
  @override
  @JsonKey(name: 'fighter_req')
  int? get fighterReq;
  @override
  @JsonKey(name: 'bard_req')
  int? get bardReq;
  @override
  @JsonKey(name: 'ranger_req')
  int? get rangerReq;
  @override
  @JsonKey(name: 'additional_req')
  String? get additionalReq;
  @override
  @JsonKey(name: 'special_slay_mechanism')
  String? get specialSlayMechanism; //Slay Results
  @override
  @JsonKey(name: 'success_slay_req')
  String get successSlayReq;
  @override
  @JsonKey(name: 'success_slay_bonus')
  String? get successSlayBonus;
  @override
  @JsonKey(name: 'failure_slay_req')
  String get failureSlayReq;
  @override
  @JsonKey(name: 'failure_slay_penalty')
  String get failureSlayPenalty;
  @override
  @JsonKey(name: 'reward_effect')
  String get rewardEffect;

  /// Create a copy of MonsterCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonsterCardImplCopyWith<_$MonsterCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
