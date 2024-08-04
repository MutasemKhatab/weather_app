import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:some_random_design1/widgets/bottom_sheet/styled_container_for_bottom_sheet.dart';

import '../../../providers/bottom_sheet_scroll_controller_provider.dart';

class ForecastBottomSheet extends ConsumerStatefulWidget {
  const ForecastBottomSheet({super.key});

  @override
  ConsumerState<ForecastBottomSheet> createState() =>
      _ForecastBottomSheetState();
}

class _ForecastBottomSheetState extends ConsumerState<ForecastBottomSheet> {
  final _minChildSize = 0.4;
  final _maxChildSize = 0.8;
  late ScrollController _scrollController;

  void initializeScrollController(WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(bottomSheetScrollControllerProvider).setScrollController =
          _scrollController;
    });
  }

  @override
  void initState() {
    super.initState();
    initializeScrollController(ref);
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: _minChildSize,
        minChildSize: _minChildSize,
        maxChildSize: _maxChildSize,
        shouldCloseOnMinExtent: false,
        builder: (context, scrollController) {
          _scrollController = scrollController;
          return const StyledContainerForBottomSheet();
        });
  }
}
