import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:rule_to_slay/domain/models/cards/challenge_card.dart';
import 'package:rule_to_slay/domain/models/cards/hero_card.dart';
import 'package:rule_to_slay/domain/models/cards/item_card.dart';
import 'package:rule_to_slay/domain/models/cards/leader_party_card.dart';
import 'package:rule_to_slay/domain/models/cards/magic_card.dart';
import 'package:rule_to_slay/domain/models/cards/monster_card.dart';

abstract class GameJsonDataSource {
  Future<Map<String, dynamic>> getGameData();
  Future<List<PartyLeaderCard>> getPartyLeaders();
  Future<List<HeroCard>> getHeroes();
  Future<List<MagicCard>> getMagics();
  Future<List<ChallengeCard>> getChallenges();
  Future<List<ItemCard>> getItems();
  Future<List<MonsterCard>> getMonsters();
}

class GameJsonDataSourceImpl implements GameJsonDataSource {
  @override
  Future<Map<String, dynamic>> getGameData() async {
    final response = await rootBundle.loadString('assets/data.json');
    return json.decode(response);
  }

  @override
  Future<List<MagicCard>> getMagics() {
    try {
      final data = getGameData();
      return data.then((value) {
        final magics = value['base_games']['magics'] as List;
        return magics.map((e) => MagicCard.fromJson(e)).toList();
      });
    } catch (e) {
      throw Exception('Failed to load magics: $e');
    }
  }

  @override
  Future<List<MonsterCard>> getMonsters() {
    try {
      final data = getGameData();
      return data.then((value) {
        final monsters = value['base_games']['monsters'] as List;
        Logger().i(monsters);
        return monsters.map((e) => MonsterCard.fromJson(e)).toList();
      });
    } catch (e) {
      throw Exception('Failed to load monsters: $e');
    }
  }

  @override
  Future<List<PartyLeaderCard>> getPartyLeaders() {
    try {
      final data = getGameData();
      return data.then((value) {
        final partyLeaders = value['base_games']['party_leaders'] as List;
        return partyLeaders.map((e) => PartyLeaderCard.fromJson(e)).toList();
      });
    } catch (e) {
      throw Exception('Failed to load party leaders: $e');
    }
  }

  @override
  Future<List<ChallengeCard>> getChallenges() {
    try {
      final data = getGameData();
      return data.then((value) {
        final challenges = value['base_games']['challenges'] as List;
        return challenges.map((e) => ChallengeCard.fromJson(e)).toList();
      });
    } catch (e) {
      throw Exception('Failed to load challenges: $e');
    }
  }

  @override
  Future<List<HeroCard>> getHeroes() {
    try {
      final data = getGameData();
      return data.then((value) {
        final heroes = value['base_games']['heroes'] as List;
        return heroes.map((e) => HeroCard.fromJson(e)).toList();
      });
    } catch (e) {
      throw Exception('Failed to load heroes: $e');
    }
  }

  @override
  Future<List<ItemCard>> getItems() {
    try {
      final data = getGameData();
      return data.then((value) {
        final items = value['base_games']['items'] as List;
        return items.map((e) => ItemCard.fromJson(e)).toList();
      });
    } catch (e) {
      throw Exception('Failed to load items: $e');
    }
  }
}
