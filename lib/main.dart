import 'package:flutter/material.dart';
import 'package:some_random_design1/helpers/themes/theme.dart';
import 'package:some_random_design1/widgets/get_things_ready.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

//TODO add dynamic data continue form wind
//TODO [Blue] bottom sheet performance is shit
//TODO [Red] add drag ability to the drag handel << SEE REFERENCE ITS FKING HARDDDDDDDDDDDDDDDDDDDDDDDDDDD>>
//TODO [Green] relative font size
// see the difference between the different types of BottomSheet

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      themeMode: ThemeMode.light,
      home: const GetThingsReady(),
    );
  }
}
