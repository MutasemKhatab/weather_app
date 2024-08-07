import 'package:flutter/material.dart';
import 'package:some_random_design1/helpers/themes/theme.dart';
import 'package:some_random_design1/screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
//TODO bottom sheet performance is shit
//TODO add drag ability to the drag handel << SEE REFERENCE ITS FKING HARDDDDDDDDDDDDDDDDDDDDDDDDDDD>>
//TODO grope methods for the forecast header
//Use dispose and correct the colors and group the decoration for the container
// see the difference between the different types of BottomSheet
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      themeMode: ThemeMode.light,
      home: const Home(),
    );
  }
}
