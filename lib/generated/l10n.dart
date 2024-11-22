// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `©2023, QSoft. All rights reserved.`
  String get splash_screen_text {
    return Intl.message(
      '©2023, QSoft. All rights reserved.',
      name: 'splash_screen_text',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home_screen_title_appbar {
    return Intl.message(
      'Home',
      name: 'home_screen_title_appbar',
      desc: '',
      args: [],
    );
  }

  /// `HOT Products`
  String get home_screen_title_hot_product {
    return Intl.message(
      'HOT Products',
      name: 'home_screen_title_hot_product',
      desc: '',
      args: [],
    );
  }

  /// `All Products`
  String get home_screen_title_all_product {
    return Intl.message(
      'All Products',
      name: 'home_screen_title_all_product',
      desc: '',
      args: [],
    );
  }

  /// `Add to cart`
  String get button_add_cart {
    return Intl.message(
      'Add to cart',
      name: 'button_add_cart',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get button_summit {
    return Intl.message(
      'Submit',
      name: 'button_summit',
      desc: '',
      args: [],
    );
  }

  /// `Quatity cannot exceed {number}`
  String validate_input_qty_exceed(Object number) {
    return Intl.message(
      'Quatity cannot exceed $number',
      name: 'validate_input_qty_exceed',
      desc: '',
      args: [number],
    );
  }

  /// `Quatity cannot less than {number}`
  String validate_input_qty_less(Object number) {
    return Intl.message(
      'Quatity cannot less than $number',
      name: 'validate_input_qty_less',
      desc: '',
      args: [number],
    );
  }

  /// `Quatity invalid`
  String get invalid_input_quatity {
    return Intl.message(
      'Quatity invalid',
      name: 'invalid_input_quatity',
      desc: '',
      args: [],
    );
  }

  /// `Cart ({number})`
  String cart_screen_title_appbar(Object number) {
    return Intl.message(
      'Cart ($number)',
      name: 'cart_screen_title_appbar',
      desc: '',
      args: [number],
    );
  }

  /// `Total price`
  String get cart_screen_total_price {
    return Intl.message(
      'Total price',
      name: 'cart_screen_total_price',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get cart_screen_order {
    return Intl.message(
      'Order',
      name: 'cart_screen_order',
      desc: '',
      args: [],
    );
  }

  /// `Order successfully!`
  String get cart_screen_order_successfully {
    return Intl.message(
      'Order successfully!',
      name: 'cart_screen_order_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Back to Home`
  String get cart_screen_button_back_to_home {
    return Intl.message(
      'Back to Home',
      name: 'cart_screen_button_back_to_home',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get order_screen_title_appbar {
    return Intl.message(
      'My Orders',
      name: 'order_screen_title_appbar',
      desc: '',
      args: [],
    );
  }

  /// `Order no`
  String get order_screen_order_item_order_no {
    return Intl.message(
      'Order no',
      name: 'order_screen_order_item_order_no',
      desc: '',
      args: [],
    );
  }

  /// `Total products`
  String get order_screen_order_item_total_items {
    return Intl.message(
      'Total products',
      name: 'order_screen_order_item_total_items',
      desc: '',
      args: [],
    );
  }

  /// `({number} items):`
  String order_screen_order_item_total_items_value(Object number) {
    return Intl.message(
      '($number items):',
      name: 'order_screen_order_item_total_items_value',
      desc: '',
      args: [number],
    );
  }

  /// `View more`
  String get order_screen_order_item_view_more {
    return Intl.message(
      'View more',
      name: 'order_screen_order_item_view_more',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
