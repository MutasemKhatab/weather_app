import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../helpers/style_helpers/app_text_styles.dart';

class ForecastContainerHeader extends StatelessWidget {
  const ForecastContainerHeader(
      {super.key, required this.title, required this.icon});

  final String title;
  final SvgPicture icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 10),
        Text(title, style: AppTextStyles.bodyLarge),
      ],
    );
  }
}
