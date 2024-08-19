// Mocks generated by Mockito 5.4.4 from annotations
// in shopping_cart/test/services/cart_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:shopping_cart/entities/cart/add_cart_item_request.dart' as _i6;
import 'package:shopping_cart/entities/cart/cart_item.dart' as _i3;
import 'package:shopping_cart/entities/cart/delete_cart_item_request.dart'
    as _i7;
import 'package:shopping_cart/entities/cart/get_list_cart_item_request.dart'
    as _i8;
import 'package:shopping_cart/entities/cart/get_list_cart_item_response.dart'
    as _i2;
import 'package:shopping_cart/entities/cart/update_cart_item_request.dart'
    as _i9;
import 'package:shopping_cart/repository/local/cart_repository.dart' as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeGetListCartItemResponse_0 extends _i1.SmartFake
    implements _i2.GetListCartItemResponse {
  _FakeGetListCartItemResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCartItem_1 extends _i1.SmartFake implements _i3.CartItem {
  _FakeCartItem_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [CartReposityImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockCartReposityImpl extends _i1.Mock implements _i4.CartReposityImpl {
  @override
  _i5.Future<bool> addCartItem(_i6.AddCartItemRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #addCartItem,
          [request],
        ),
        returnValue: _i5.Future<bool>.value(false),
        returnValueForMissingStub: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<bool> deleteAllItemInCart() => (super.noSuchMethod(
        Invocation.method(
          #deleteAllItemInCart,
          [],
        ),
        returnValue: _i5.Future<bool>.value(false),
        returnValueForMissingStub: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<bool> deleteCartItem(_i7.DeleteCartItemRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteCartItem,
          [request],
        ),
        returnValue: _i5.Future<bool>.value(false),
        returnValueForMissingStub: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<_i2.GetListCartItemResponse> getCartItems(
          _i8.GetListCartItemRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #getCartItems,
          [request],
        ),
        returnValue: _i5.Future<_i2.GetListCartItemResponse>.value(
            _FakeGetListCartItemResponse_0(
          this,
          Invocation.method(
            #getCartItems,
            [request],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.GetListCartItemResponse>.value(
                _FakeGetListCartItemResponse_0(
          this,
          Invocation.method(
            #getCartItems,
            [request],
          ),
        )),
      ) as _i5.Future<_i2.GetListCartItemResponse>);

  @override
  _i5.Future<int> getCountItemInCart() => (super.noSuchMethod(
        Invocation.method(
          #getCountItemInCart,
          [],
        ),
        returnValue: _i5.Future<int>.value(0),
        returnValueForMissingStub: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);

  @override
  _i5.Future<bool> updateCartItem(
    int? cartId,
    _i9.UpdateCartItemRequest? request,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateCartItem,
          [
            cartId,
            request,
          ],
        ),
        returnValue: _i5.Future<bool>.value(false),
        returnValueForMissingStub: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<_i3.CartItem> getCartItem(int? productId) => (super.noSuchMethod(
        Invocation.method(
          #getCartItem,
          [productId],
        ),
        returnValue: _i5.Future<_i3.CartItem>.value(_FakeCartItem_1(
          this,
          Invocation.method(
            #getCartItem,
            [productId],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i3.CartItem>.value(_FakeCartItem_1(
          this,
          Invocation.method(
            #getCartItem,
            [productId],
          ),
        )),
      ) as _i5.Future<_i3.CartItem>);
}
