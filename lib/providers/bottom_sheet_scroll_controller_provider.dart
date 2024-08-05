import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetScrollControllerProvider with ChangeNotifier {
  BottomSheetScrollControllerProvider(this._scrollViewController);

  final ScrollController _scrollViewController;

  ScrollController get scrollViewController => _scrollViewController;
}
