import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:some_random_design1/helpers/scroll_utls.dart';
import '../../../providers/bottom_sheet_scroll_controller_provider.dart';
import 'package:some_random_design1/widgets/bottom_sheet/styled_container_for_bottom_sheet.dart';

class ForecastBottomSheet extends StatelessWidget {
  const ForecastBottomSheet({super.key});

  final _minChildSize = 0.4;
  final _maxChildSize = 0.8;

  BottomSheetScrollControllerProvider initializeAndReturnScrollProvider(
      ScrollController scrollController) {
    ScrollUtls.scrollViewController = scrollController;

    return BottomSheetScrollControllerProvider(scrollController);
  }

  @override
  Widget build(BuildContext context) {
    final draggableController = ScrollUtls.draggableScrollableController;

    return DraggableScrollableSheet(
      initialChildSize: _minChildSize,
      minChildSize: _minChildSize,
      maxChildSize: _maxChildSize,
      controller: draggableController,
      builder: (context, scrollController) {
        return ChangeNotifierProvider(
            create: (_) => initializeAndReturnScrollProvider(scrollController),
            child: const StyledContainerForBottomSheet());
      },
    );
  }
}
