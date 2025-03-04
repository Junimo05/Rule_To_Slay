// ignore_for_file: constant_identifier_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rule_to_slay/main.dart';

class AssetImgs {
  //Base
  static const String monsterBase = 'assets/imgs/monsters/';
  static const String heroBase = 'assets/imgs/heroes/';
  static const String itemBase = 'assets/imgs/items/';
  static const String magicBase = 'assets/imgs/magic_challenge/magic/';
  static const String challengeBase = 'assets/imgs/magic_challenge/challenge/';
  static const String backgroundBase = 'assets/imgs/background/';

  //App
  static const String mainBg = 'assets/imgs/main_background.jpg';
  static const String magical_scroll = 'assets/imgs/magical_scroll.jpg';
  static const String rmbg_magical_scroll =
      'assets/imgs/rmbg_magical_scroll.png';
  static const String leftDivider = 'assets/imgs/left_divider.png';
  static const String rightDivider = 'assets/imgs/right_divider.png';

  //Action Point
  static const String actionPoint = 'assets/imgs/action_point.svg';

  //Party Leader
  static const String partyLeader_TheProtectingHorn =
      'assets/imgs/the_protecting_horn.png';

  //Background Card
  static const String big_black_background =
      "assets/imgs/background/big_black_background.png";
  static const String big_white_background =
      "assets/imgs/background/big_white_background.png";
  static const String small_white_background =
      "assets/imgs/background/small_white_background.png";
  static const String rule_card = "assets/imgs/background/rule_card.jpg";

  //Monster Card
  static const String monster_abyss_queen =
      "assets/imgs/monsters/abyss_queen.jpg";
  static const String monster_anuran_cauldron =
      "assets/imgs/monsters/anuran_cauldron.jpg";
  static const String monster_artic_aries =
      "assets/imgs/monsters/artic_aries.jpg";

  //Hero Example
  static const String hero_example = "assets/imgs/heroes/bear_claw.jpg";
  //Item Example
  static const String item_example = "assets/imgs/items/decoy_doll.jpg";
  //Magic Example
  static const String magic_example =
      "assets/imgs/magic_challenge/magic/critical_boost.jpg";
  //Monster Example
  static const String monster_example = "assets/imgs/monsters/abyss_queen.jpg";
}

class GameKeyWord {
  static const String AP = "AP";
  static const String Immediately = "Immediately";
  static const String DRAW = 'DRAW';
  static const String Hero = 'Hero';
  static const String Item = 'Item';
  static const String Magic = 'Magic';
  static const String PartyLeader = 'PartyLeader';
  static const String Monster = 'Monster';
  static const String ATTACK = 'ATTACK';
  static const String CHALLENGE = 'CHALLENGE';
  static const String DESTROY = 'DESTROY';
  static const String DISCARD = 'DISCARD';
  static const String SACRIFICE = 'SACRIFICE';
  static const String STEAL = 'STEAL';
  static const String SLAY = 'SLAY';
  static const String MODIFIER = 'MODIFIER';
}

String getLanguageName(Locale locale) {
  switch (locale.languageCode) {
    case 'en':
      return 'English';
    case 'vi':
      return 'Tiếng Việt';
    default:
      return 'English';
  }
}

void changeLanguage(BuildContext context, Locale newLocale) {
  // Đối với ứng dụng đơn giản
  MyApp.setLocale(context, newLocale);

  // Hoặc sử dụng state management
  // Provider.of<LocaleProvider>(context, listen: false).setLocale(newLocale);
}
