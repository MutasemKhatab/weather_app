import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomSheetScrollControllerProvider extends ChangeNotifier {
  ScrollController _scrollController = ScrollController();

  ScrollController get scrollController => _scrollController;

  set setScrollController(ScrollController scrollController) {
    _scrollController = scrollController;
    notifyListeners();
  }
}

final bottomSheetScrollControllerProvider = ChangeNotifierProvider((ref) {
  return BottomSheetScrollControllerProvider();
});
