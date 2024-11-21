import 'dart:async';

import 'package:injectable/injectable.dart';

@lazySingleton
class IndexBottomNavigationBarStream {
  int _lastIndex = 0;
  int _currentIndex = 0;
  final StreamController<int> _controller = StreamController.broadcast();

  void jumbToPage(int page) {
    if (_lastIndex == page) {
      return;
    }
    _currentIndex = page;
    _controller.add(page);
    _lastIndex = page;
  }

  Stream<int> get stream => _controller.stream;

  int get currentPage => _currentIndex;
}
