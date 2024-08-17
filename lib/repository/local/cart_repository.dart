import 'package:injectable/injectable.dart';
import 'package:shopping_cart/entities/cart/add_cart_item_request.dart';
import 'package:shopping_cart/entities/cart/cart_item.dart';
import 'package:shopping_cart/entities/cart/delete_cart_item_request.dart';
import 'package:shopping_cart/entities/cart/get_list_cart_item_request.dart';
import 'package:shopping_cart/entities/cart/get_list_cart_item_response.dart';
import 'package:shopping_cart/entities/cart/update_cart_item_request.dart';
import 'package:shopping_cart/repository/sqflite_database.dart';
import 'package:sqflite/sqflite.dart';

abstract class CartRepository {
  Future<bool> addCartItem(AddCartItemRequest request);

  Future<bool> updateCartItem(int cartId, UpdateCartItemRequest request);

  Future<GetListCartItemResponse> getCartItems(GetListCartItemRequest request);

  Future<bool> deleteCartItem(DeleteCartItemRequest request);

  Future<bool> deleteAllItemInCart();

  Future<int> getCountItemInCart();

  Future<CartItem> getCartItem(int productId);
}

@Injectable(as: CartRepository)
class CartReposityImpl implements CartRepository {
  CartReposityImpl(SqfliteDatabase sqflite) {
    _db = sqflite.db;
  }
  late Database _db;

  final String _table = 'cart_items';

  @override
  Future<bool> addCartItem(AddCartItemRequest request) async {
    int data = await _db.insert(_table, request.toJson());
    return data != 0;
  }

  @override
  Future<bool> deleteAllItemInCart() async {
    await _db.rawDelete('DELETE FROM $_table');
    return true;
  }

  @override
  Future<bool> deleteCartItem(DeleteCartItemRequest request) async {
    int data =
        await _db.delete(_table, where: 'id = ?', whereArgs: [request.id]);
    return data != 0;
  }

  @override
  Future<GetListCartItemResponse> getCartItems(
      GetListCartItemRequest request) async {
    List<Map<String, Object?>> data = await _db.query(_table);
    return GetListCartItemResponse.fromJson({'cart_items': data});
  }

  @override
  Future<int> getCountItemInCart() async {
    List<Map<String, Object?>> dataCountC =
        await _db.rawQuery('SELECT COUNT(*) as count FROM cart_items');
    return dataCountC[0]['count'] as int? ?? 0;
  }

  @override
  Future<bool> updateCartItem(int cartId, UpdateCartItemRequest request) async {
    int data = await _db
        .update(_table, request.toJson(), where: 'id = ?', whereArgs: [cartId]);
    return data != 0;
  }

  @override
  Future<CartItem> getCartItem(int productId) async {
    List<Map<String, Object?>> data = await _db
        .query(_table, where: 'product_id = ?', whereArgs: [productId]);
    if (data.isEmpty) {
      return const CartItem();
    }
    return CartItem.fromJson(data[0]);
  }
}
