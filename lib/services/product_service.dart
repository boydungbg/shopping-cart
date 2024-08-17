import 'dart:developer';

import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_cart/common/exception/exception.dart';
import 'package:shopping_cart/entities/product/hot_product_list_request.dart';
import 'package:shopping_cart/entities/product/hot_product_list_response.dart';
import 'package:shopping_cart/entities/product/product_list_request.dart';
import 'package:shopping_cart/entities/product/product_list_response.dart';
import 'package:shopping_cart/repository/local/product_repository.dart';
import 'package:shopping_cart/services/base_service.dart';

abstract class ProductService {
  Future<Either<BaseException, HotProductListResponse>> getHotProductList(
      HotProductListRequest request);

  Future<Either<BaseException, ProductListResponse>> getListProduct(
      ProductListRequest request);
}

@Injectable(as: ProductService)
class ProductServiceImpl extends BaseService implements ProductService {
  ProductServiceImpl(this._repo) : super();

  final ProductRepository _repo;

  @override
  Future<Either<BaseException, HotProductListResponse>> getHotProductList(
      HotProductListRequest request) async {
    try {
      return Right(await _repo.getHotProductList(request));
    } catch (e, trace) {
      log('getHotProductList ERROR $e $trace');
      return Left(exceptionHandle.handle(e));
    }
  }

  @override
  Future<Either<BaseException, ProductListResponse>> getListProduct(
      ProductListRequest request) async {
    try {
      return Right(await _repo.getListProduct(request));
    } catch (e, trace) {
      log('getListProduct ERROR $e $trace');
      return Left(exceptionHandle.handle(e));
    }
  }
}
