import 'package:flutter/material.dart';

import 'features/presentation/pages/intro_Screen.dart';
import 'features/presentation/pages/splash_Screen.dart';

import 'package:device_preview/device_preview.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}

// SplashView(),
// IntroView(),

