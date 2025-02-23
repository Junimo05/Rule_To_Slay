import 'package:logger/logger.dart';
import 'package:rule_to_slay/data/entities/challenge.dart';
import 'package:rule_to_slay/data/entities/hero.dart';
import 'package:rule_to_slay/data/entities/item.dart';
import 'package:rule_to_slay/data/entities/magic.dart';
import 'package:rule_to_slay/data/entities/monster.dart';
import 'package:rule_to_slay/data/entities/partyleader.dart';
import 'package:rule_to_slay/domain/interfaces/game_repository.dart';
import 'package:sqflite/sqflite.dart';

class GameRepositoryImpl implements GameRepository {
  final Database _database;

  GameRepositoryImpl(this._database);

  @override
  Future<Map<String, dynamic>> getFullData() {
    // TODO: implement getFullData
    throw UnimplementedError();
  }

  //Items
  @override
  Future<void> insertItemDataFromJson(List<ItemEntity> items) {
    final batch = _database.batch();
    try {
      for (final item in items) {
        batch.insert('items', item.toMap());
      }
      return _database.transaction((txn) async => await batch.commit());
    } catch (e) {
      Logger().e('Failed to insert item data: $e');
      rethrow;
    }
  }

  //Challenges
  @override
  Future<void> insertChallengeDataFromJson(List<ChallengeEntity> challenges) {
    final batch = _database.batch();
    try {
      for (final challenge in challenges) {
        batch.insert('challenges', challenge.toMap());
      }
      return _database.transaction((txn) async => await batch.commit());
    } catch (e) {
      Logger().e('Failed to insert challenge data: $e');
      rethrow;
    }
  }

  //Magics
  @override
  Future<void> insertMagicDataFromJson(List<MagicEntity> magics) {
    final batch = _database.batch();
    try {
      for (final magic in magics) {
        batch.insert('magics', magic.toMap());
      }
      return _database.transaction((txn) async => await batch.commit());
    } catch (e) {
      Logger().e('Failed to insert magic data: $e');
      rethrow;
    }
  }

  //Heroes
  @override
  Future<void> insertHeroDataFromJson(List<HeroEntity> heroes) async {
    final batch = _database.batch();
    try {
      for (final hero in heroes) {
        batch.insert('heroes', hero.toMap());
      }
      await _database.transaction((txn) async => await batch.commit());
    } catch (e) {
      Logger().e('Failed to insert hero data: $e');
      rethrow;
    }
  }

  //Monsters
  @override
  Future<void> insertMonsterDataFromJson(List<MonsterEntity> monsters) async {
    final batch = _database.batch();
    try {
      for (final monster in monsters) {
        batch.insert('monsters', monster.toMap());
      }
      await _database.transaction((txn) async => await batch.commit());
    } catch (e) {
      Logger().e('Failed to insert monster data: $e');
      rethrow;
    }
  }

  //Party Leader
  @override
  Future<void> insertPartyLeaderDataFromJson(
      List<PartyleaderEntity> leaders) async {
    final batch = _database.batch();
    try {
      for (final leader in leaders) {
        batch.insert('party_leaders', leader.toMap());
      }
      await _database.transaction((txn) async => await batch.commit());
    } catch (e) {
      Logger().e('Failed to insert party leader data: $e');
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> getPartyLeaders() {
    // TODO: implement getPartyLeaders
    throw UnimplementedError();
  }
}
