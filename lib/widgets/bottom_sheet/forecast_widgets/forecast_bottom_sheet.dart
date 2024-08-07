import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:some_random_design1/consts/bottom_sheet_consts.dart';
import 'package:some_random_design1/helpers/scroll_utils.dart';
import 'package:some_random_design1/widgets/bottom_sheet/styled_container_for_bottom_sheet.dart';
import '../../../providers/bottom_sheet_scroll_controller_provider.dart';
import 'forecast_header/positioned_header.dart';

class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {
    addControlListener();
    final draggableController = ScrollUtils.draggableScrollableController;

    return Stack(
      children: [
        const PositionedHeader(),
        DraggableScrollableSheet(
          initialChildSize: minBottomSheetHeight,
          minChildSize: minBottomSheetHeight,
          maxChildSize: maxBottomSheetHeight,
          controller: draggableController,
          builder: (context, scrollController) {
            return ChangeNotifierProvider(
                create: (_) =>
                    BottomSheetScrollControllerProvider(scrollController),
                child: const StyledContainerForBottomSheet());
          },
        ),
      ],
    );
  }

  void addControlListener() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // adding value listener to the scroll controller
      ScrollUtils.addListener();
    });
  }
}
