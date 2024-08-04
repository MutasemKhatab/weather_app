import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:some_random_design1/helpers/themes/theme.dart';
import 'package:some_random_design1/screens/background_image.dart';

void main() {
  runApp(const MyApp());
}
//TODO edit colors and put them in [ExtraColors]
//TODO edit widget where you pass the parameter 1 million times use Riverpod
//TODO check widget that contain repeated code
//switch the stateful widget to stateless widget if possible
//TODO add drag ability to the drag handel

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        theme: theme,
        themeMode: ThemeMode.light,
        home: const BackgroundImage(),
      ),
    );
  }
}
