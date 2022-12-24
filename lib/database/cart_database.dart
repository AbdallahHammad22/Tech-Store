import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:store/controller/constant.dart';

import '../model/cart_model.dart';

class CartDatabase {
  CartDatabase._();
  static final CartDatabase db = CartDatabase._();
  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initDb();
    return _database;
  }

  initDb() async {
    String path = join(await getDatabasesPath(), 'CartProduct.db');
    return await openDatabase(path, version: 1,
        onCreate: ((Database db, int version) async {
      await db.execute('''
CREATE TABLE $tableCartProduct(
  $columnName TEXT NOT NULL,
  $columnImage TEXT NOT NULL,
  $columnPrice TEXT NOT NULL,
  $columnQuantity INTEGER NOT NULL )
   ''');
    }));
  }

  Future<List<CartModel>> getAllProduct() async {
    var dbClient = await database;
    List<Map> maps = await dbClient!.query(tableCartProduct);
    List<CartModel> list = maps.isEmpty
        ? maps.map((product) => CartModel.fromJson(product)).toList()
        : [];
    return list;
  }

  insert(CartModel model) async {
    var dbClient = await database;
    await dbClient?.insert(tableCartProduct, model.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }
}
