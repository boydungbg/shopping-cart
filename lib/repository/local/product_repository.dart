import 'package:injectable/injectable.dart';
import 'package:shopping_cart/entities/product/hot_product_list_request.dart';
import 'package:shopping_cart/entities/product/hot_product_list_response.dart';
import 'package:shopping_cart/entities/product/product.dart';
import 'package:shopping_cart/entities/product/product_list_request.dart';
import 'package:shopping_cart/entities/product/product_list_response.dart';
import 'package:shopping_cart/repository/sqflite_database.dart';
import 'package:sqflite/sqflite.dart';

abstract class ProductRepository {
  Future<HotProductListResponse> getHotProductList(
      HotProductListRequest request);

  Future<ProductListResponse> getListProduct(ProductListRequest request);
}

@Injectable(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl(SqfliteDatabase sqflite) {
    _db = sqflite.db;
  }

  late Database _db;

  final String _table = 'products';

  @override
  Future<HotProductListResponse> getHotProductList(
      HotProductListRequest request) async {
    List<Map<String, Object?>> data = await _db.query(_table,
        where: 'is_hot = ?',
        whereArgs: [Product.isHotProduct],
        limit: request.limit,
        orderBy: 'updated_at DESC');
    return HotProductListResponse.fromJson({_table: data});
  }

  @override
  Future<ProductListResponse> getListProduct(ProductListRequest request) async {
    int offset = (request.page - 1) * request.limit;
    List<Map<String, Object?>> data = await _db.query(_table,
        limit: request.limit, offset: offset, orderBy: 'created_at DESC');
    List<Map<String, Object?>> dataCountP =
        await _db.rawQuery('SELECT COUNT(*) as count FROM products');
    int count = dataCountP[0]['count'] as int;
    int maxPage = (count / request.limit).ceil();
    return ProductListResponse.fromJson({
      'products': data,
      'page': request.page,
      'count': count,
      'per_page': request.limit,
      'max_page': maxPage
    });
  }
}
