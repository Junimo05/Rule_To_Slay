import 'package:rule_to_slay/data/entities/challenge.dart';
import 'package:rule_to_slay/data/entities/hero.dart';
import 'package:rule_to_slay/data/entities/item.dart';
import 'package:rule_to_slay/data/entities/magic.dart';
import 'package:rule_to_slay/data/entities/monster.dart';
import 'package:rule_to_slay/data/entities/partyleader.dart';

abstract class GameRepository {
  Future<Map<String, dynamic>> getFullData();

  //Challenges
  Future<void> insertChallengeDataFromJson(List<ChallengeEntity> challenges);

  //Items
  Future<void> insertItemDataFromJson(List<ItemEntity> items);

  //Magics
  Future<void> insertMagicDataFromJson(List<MagicEntity> magics);

  //Monsters
  Future<void> insertMonsterDataFromJson(List<MonsterEntity> monsters);

  //Heroes
  Future<void> insertHeroDataFromJson(List<HeroEntity> heroes);

  //Party Leader
  Future<void> insertPartyLeaderDataFromJson(List<PartyleaderEntity> leaders);
  Future<Map<String, dynamic>> getPartyLeaders();
}
