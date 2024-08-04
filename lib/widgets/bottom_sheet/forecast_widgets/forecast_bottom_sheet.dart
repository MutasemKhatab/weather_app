import 'package:flutter/material.dart';
import 'package:some_random_design1/widgets/bottom_sheet/bottom_sheet_container.dart';
import 'package:some_random_design1/widgets/bottom_sheet/styled_container_for_bottom_sheet.dart';
import '../bottom_sheet_dragger.dart';

class ForecastBottomSheet extends StatefulWidget {
  const ForecastBottomSheet({super.key});

  @override
  State<ForecastBottomSheet> createState() => _ForecastBottomSheetState();
}

class _ForecastBottomSheetState extends State<ForecastBottomSheet> {
  final _minChildSize = 0.4;
  final _maxChildSize = 0.8;
  final _space = const SizedBox(height: 8);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: _minChildSize,
        minChildSize: _minChildSize,
        maxChildSize: _maxChildSize,
        shouldCloseOnMinExtent: false,
        builder: (BuildContext context, ScrollController scrollController) {
          return StyledContainerForBottomSheet(
            child: Column(children: [
              _space,
              const BottomSheetDragger(),
              _space,
              BottomSheetContainer(scrollController: scrollController)
            ]),
          );
        });
  }
}
