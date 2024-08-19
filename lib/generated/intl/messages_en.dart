// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(number) => "Cart (${number})";

  static String m1(number) => "Quatity cannot exceed ${number}";

  static String m2(number) => "Quatity cannot less than ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "button_add_cart": MessageLookupByLibrary.simpleMessage("Add to cart"),
        "button_summit": MessageLookupByLibrary.simpleMessage("Submit"),
        "cart_screen_button_back_to_home":
            MessageLookupByLibrary.simpleMessage("Back to Home"),
        "cart_screen_order": MessageLookupByLibrary.simpleMessage("Order"),
        "cart_screen_order_successfully":
            MessageLookupByLibrary.simpleMessage("Order successfully!"),
        "cart_screen_title_appbar": m0,
        "cart_screen_total_price":
            MessageLookupByLibrary.simpleMessage("Total price"),
        "home_screen_title_all_product":
            MessageLookupByLibrary.simpleMessage("All Products"),
        "home_screen_title_appbar":
            MessageLookupByLibrary.simpleMessage("Home"),
        "home_screen_title_hot_product":
            MessageLookupByLibrary.simpleMessage("HOT Products"),
        "invalid_input_quatity":
            MessageLookupByLibrary.simpleMessage("Quatity invalid"),
        "splash_screen_text": MessageLookupByLibrary.simpleMessage(
            "©2023, QSoft. All rights reserved."),
        "validate_input_qty_exceed": m1,
        "validate_input_qty_less": m2
      };
}
