import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:some_random_design1/providers/bottom_sheet_scroll_controller_provider.dart';
import 'package:some_random_design1/widgets/bottom_sheet/forecast_widgets/forecast_containers_list/forecast_listview.dart';

class ForecastTab extends ConsumerWidget {
  const ForecastTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController =
        ref.read(bottomSheetScrollControllerProvider.notifier).scrollController;

    return SingleChildScrollView(
        controller: scrollController,
        child: const Column(
          children: [
            ForecastListView(),
            SizedBox(height: 1000),
          ],
        ));
  }
}
