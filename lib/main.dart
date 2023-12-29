import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lightwork/routes/routes_generator.dart';
import 'package:lightwork/view/splash_screen/splash_screen.dart';
import 'package:lightwork/view/tab_screen/tab_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const LightWorkApp());
}

class LightWorkApp extends StatelessWidget {
  const LightWorkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      title: "LightWork",
      home: LightWorkHome(),
    );
  }
}

class LightWorkHome extends StatefulWidget {
  const LightWorkHome({super.key});

  @override
  LightWorkHomeState createState() => LightWorkHomeState();
}

class LightWorkHomeState extends State<LightWorkHome> {
  int appState = 0;

  changeState() {
    setState(() {
      appState = 1;
    });
  }

  startTimer() async {
    const Duration duration = Duration(seconds: 3);
    return Timer(duration, changeState);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return appState == 0 ? const SplashScreen() : const TabScreen();
  }
}
