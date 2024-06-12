import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'Models.dart';
//import 'dart:io'; //50:60 crea una copia de la base de datos
//import 'package:path_provider/path_provider.dart';
//import 'package:flutter_absolute_path/flutter_absolute_path.dart';

class BuzzDatabase {
  static final BuzzDatabase instance = BuzzDatabase._init();

  static Database? _database;

  BuzzDatabase._init();

  final String tableCartItems = 'CartItems';

  Future<Database> get database async {   //si existe la base de datos se llama
    if (_database != null) return _database!;

    _database = await _initDB('buzz.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {     //si no existe la base de datos hay que crearla
    final dbPath = await getDatabasesPath();   // de librería sqflite
    final Path = join(dbPath, filePath);

    return await openDatabase(Path, version: 1, onCreate: _onCreateDB);     //openDatabase devuelve un Future, por lo que hay que aplicar await
  }


  //Se requiere ejecutar funciones async para poder hacer llamados await
  Future _onCreateDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $tableCartItems(
    id INTEGER PRIMARY KEY,
    Strength INTEGER,
    Name TEXT,
    Type TEXT,
    Attacks TEXT,
    Description TEXT
    )
    ''');
  }

  Future<void> insert(CartItem item) async { //async para poder hacer llamadas await
    final db = await instance.database;
    await db.insert(tableCartItems, item.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<CartItem>> getAllItems() async{
    final db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query(tableCartItems);

    return List.generate (maps.length, (i) {
      return CartItem(
        id: maps [i]['id'],
        Strength: maps [i]['Strength'],
        //Image: maps [i]['Image'],
        Name: maps [i]['Name'],
        Type: maps [i]['Type'],
        Attacks: maps [i]['Attacks'],
        Description: maps[i]['Description'],
      );
    });
  }

  Future<int> delete(int id) async {
    final db = await instance.database;
    return await db.delete(
      tableCartItems,
      where: "id = ?",
      whereArgs: [id],
    );
  }


  //Future<void> copyDatabase() async {   //50:60 crea una copia de la base de datos
  //  final dbPath = await getDatabasesPath();
  //  final path = join(dbPath, 'buzz.db');
  //  final newPath = join(dbPath, 'buzz_copy.db');

  //  File oldFile = File(path);
  //  File newFile = File(newPath);

  //  await deleteDatabase(newPath); // Delete the existing if any
  //  await oldFile.copy(newPath);
 // }

 // Future<String> getDatabasePath() async {
 // Directory documentsDirectory = await getApplicationDocumentsDirectory();
 // String path = join(documentsDirectory.path, "buzz_copy.db");
//  String absolutePath = await FlutterAbsolutePath.getAbsolutePath(path);
//  return absolutePath;
//  }
}