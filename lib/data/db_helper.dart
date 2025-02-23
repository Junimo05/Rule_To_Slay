import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const _databaseName = 'game.db';
  static const _databaseVersion = 1;

  static final DatabaseHelper _instance = DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper.internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDb();
    return _database!;
  }

  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, _databaseName);
    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: (db, version) async {
        _onCreate(db, version);

        //Import Data
      },
    );
  }

  Future _onCreate(Database db, int version) async {
    //Party Leader Card
    const createPartyLeadersTable = '''
      CREATE TABLE party_leaders(
      id TEXT PRIMARY KEY,
      class_type TEXT,
      aura TEXT,
      )
    ''';

    const createHeroesTable = '''
      CREATE TABLE heroes(
      id TEXT PRIMARY KEY,
      class_type TEXT,
      success_dice TEXT,
      effect TEXT,
      )
    ''';

    const createChallengesTable = '''
      CREATE TABLE challenges(
      id TEXT PRIMARY KEY,
      effect TEXT,
      additional_require TEXT,
      )
    ''';

    const createMagicsTable = '''
      CREATE TABLE magics(
      id TEXT PRIMARY KEY,
      effect TEXT,
      additional_require TEXT,
      )
    ''';

    const createItemsTable = '''
      CREATE TABLE items(
      id TEXT PRIMARY KEY,
      item_type TEXT,
      effect TEXT,
      additional_require TEXT,
      )
    ''';

    const createMonstersTable = '''
      CREATE TABLE monsters(
      id TEXT PRIMARY KEY,
      hero_req INTEGER,
      guardian_req INTEGER,
      thief_req INTEGER,
      wizard_req INTEGER,
      fighter_req INTEGER,
      bard_req INTEGER,
      ranger_req INTEGER,
      additional_req TEXT,
      special_slay_mechanism TEXT,
      success_slay_req TEXT,
      success_slay_bonus TEXT,
      failure_slay_req TEXT,
      failure_slay_penalty TEXT,
      reward_effect TEXT,
      )
    ''';

    const createCardsTable = '''
      CREATE TABLE cards(
      id TEXT PRIMARY KEY,
      id_card TEXT,
      name TEXT,
      img_url TEXT,
      card_type TEXT,
      ver_type TEXT,
      FOREIGN KEY (id_card) REFERENCES party_leaders(id),
      FOREIGN KEY (id_card) REFERENCES heroes(id),
      FOREIGN KEY (id_card) REFERENCES challenges(id),
      FOREIGN KEY (id_card) REFERENCES magics(id),
      FOREIGN KEY (id_card) REFERENCES items(id),
      FOREIGN KEY (id_card) REFERENCES monsters(id)
      )
    ''';

    await db.execute(createPartyLeadersTable);
    await db.execute(createHeroesTable);
    await db.execute(createChallengesTable);
    await db.execute(createMagicsTable);
    await db.execute(createItemsTable);
    await db.execute(createMonstersTable);
    await db.execute(createCardsTable);
  }
}
