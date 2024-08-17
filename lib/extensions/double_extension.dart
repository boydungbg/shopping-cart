import 'package:intl/intl.dart';

extension NumberParsing on num {
  String formatPrice() {
    if (this == 0) {
      return '0';
    }
    final formatter = NumberFormat('###,000');
    return formatter.format(this);
  }
}
