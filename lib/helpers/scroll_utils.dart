import 'package:flutter/material.dart';

import '../consts/bottom_sheet_consts.dart';

abstract class ScrollUtils {
  static final draggableScrollableController = DraggableScrollableController();
  static ValueNotifier<double> heightNotifier = ValueNotifier(0);
  static bool didAddListener = false;

  static void addListener() {
    if (!draggableScrollableController.isAttached) return;
    if (didAddListener) return;

    draggableScrollableController.addListener(heightNotifierListener);
  }

  static void heightNotifierListener() {
    heightNotifier.value =
        calculateHeightScale(draggableScrollableController.size);
    didAddListener = true;
  }

  static double calculateHeightScale(double height) {
    final normalizedHeight = height - minBottomSheetHeight;
    final heightScale = normalizedHeight / bottomSheetHeightDifference;

    return heightScale;
  }
}
