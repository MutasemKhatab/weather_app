import 'package:flutter/material.dart';

abstract class ScrollUtils {
  static final draggableScrollableController = DraggableScrollableController();
  static ValueNotifier<double> heightNotifier=ValueNotifier(0.4);
  static bool didAddListener = false;

  static void addListener() {
    if (!draggableScrollableController.isAttached) return;
    if (didAddListener) return;

    heightNotifier.value = draggableScrollableController.size;
    draggableScrollableController.addListener(heightNotifierListener);
  }

  static void heightNotifierListener() {
    heightNotifier.value = draggableScrollableController.size;
    didAddListener = true;
  }
}
