import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

@singleton
class SqfliteDatabase {
  late Database _db;

  Database get db => _db;

  Future<void> openDb() async {
    final String path = await getDatabasesPath();
    _db = await openDatabase(join(path, 'shopping_cart.db'),
        onCreate: _onCreateDb as OnDatabaseCreateFn, version: 1);
  }

  Future<void> _onCreateDb(Database db, int version) async {
    Batch batch = db.batch();
    batch.execute(
        'CREATE TABLE products (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, image TEXT, price REAL, is_hot INTEGER, created_at INTEGER, updated_at INTEGER)');
    batch.execute(
        'CREATE TABLE cart_items (id INTEGER PRIMARY KEY AUTOINCREMENT, product_id INTEGER, image TEXT, title TEXT, price REAL, quantity INTEGER)');
    for (var i = 0; i < 100; i++) {
      batch.insert('products', {
        'title': 'Product #$i',
        'price': (Random().nextInt(50) + 1) * 10000,
        'is_hot': Random().nextInt(10) > 7 ? 1 : 0,
        'created_at': DateTime.now().microsecondsSinceEpoch,
        'updated_at': DateTime.now().microsecondsSinceEpoch,
        'image': 'assets/images/product_${Random().nextInt(9)}.jpg'
      });
    }
    batch.commit();
  }
}
