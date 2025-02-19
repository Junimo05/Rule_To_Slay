// ignore_for_file: constant_identifier_names

import 'dart:ui';

enum CardType {
  HERO('Hero'),
  MONSTER('Monster'),
  ITEM('Item'),
  MAGIC('Magic'),
  CHALLENGE('Challenge'),
  PARTY_LEADER('Party Leader'),
  UNKNOWN("Unknown");

  final String value;
  const CardType(this.value);

  static CardType fromString(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => UNKNOWN, // Default Values
    );
  }
}

CardType cardTypeFromJson(String value) => CardType.fromString(value);
String cardTypeToJson(CardType type) => type.value;

//Card Size
enum CardSize { large, small }

const Map<CardSize, Size> cardDimensions = {
  CardSize.large: Size(550, 949),
  CardSize.small: Size(496, 694),
};

const Map<CardSize, double> cardAspectRatios = {
  CardSize.large: 0.5845323741007194, // width/height (base on size: 650 × 1112)
  CardSize.small: 0.7158590308370044, // width/height (base on size: 650 × 908)
};
