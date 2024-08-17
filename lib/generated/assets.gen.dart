/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/add.png
  AssetGenImage get add => const AssetGenImage('assets/icons/add.png');

  /// File path: assets/icons/flame.png
  AssetGenImage get flame => const AssetGenImage('assets/icons/flame.png');

  /// File path: assets/icons/minus.png
  AssetGenImage get minus => const AssetGenImage('assets/icons/minus.png');

  /// File path: assets/icons/shopping_cart.png
  AssetGenImage get shoppingCart =>
      const AssetGenImage('assets/icons/shopping_cart.png');

  /// List of all assets
  List<AssetGenImage> get values => [add, flame, minus, shoppingCart];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/cart.png
  AssetGenImage get cart => const AssetGenImage('assets/images/cart.png');

  /// File path: assets/images/product_0.jpg
  AssetGenImage get product0 =>
      const AssetGenImage('assets/images/product_0.jpg');

  /// File path: assets/images/product_1.jpg
  AssetGenImage get product1 =>
      const AssetGenImage('assets/images/product_1.jpg');

  /// File path: assets/images/product_2.jpg
  AssetGenImage get product2 =>
      const AssetGenImage('assets/images/product_2.jpg');

  /// File path: assets/images/product_3.jpg
  AssetGenImage get product3 =>
      const AssetGenImage('assets/images/product_3.jpg');

  /// File path: assets/images/product_4.jpg
  AssetGenImage get product4 =>
      const AssetGenImage('assets/images/product_4.jpg');

  /// File path: assets/images/product_5.jpg
  AssetGenImage get product5 =>
      const AssetGenImage('assets/images/product_5.jpg');

  /// File path: assets/images/product_6.jpg
  AssetGenImage get product6 =>
      const AssetGenImage('assets/images/product_6.jpg');

  /// File path: assets/images/product_7.jpg
  AssetGenImage get product7 =>
      const AssetGenImage('assets/images/product_7.jpg');

  /// File path: assets/images/product_8.jpg
  AssetGenImage get product8 =>
      const AssetGenImage('assets/images/product_8.jpg');

  /// File path: assets/images/product_9.jpg
  AssetGenImage get product9 =>
      const AssetGenImage('assets/images/product_9.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        cart,
        product0,
        product1,
        product2,
        product3,
        product4,
        product5,
        product6,
        product7,
        product8,
        product9
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
