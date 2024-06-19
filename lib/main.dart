import 'package:e_learning/HomePage.dart';
import 'package:flutter/material.dart'; // Import the 'material.dart' library
import 'package:e_learning/platform_util.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final screenCaptureProtected = ValueNotifier(false);
  await PlatformUtil.preventScreenCapture(enable: true);
  screenCaptureProtected.value = true;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Learning App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          brightness: Brightness.light),
      home: const HomeScreen(),
    );
  }
}
