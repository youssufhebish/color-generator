import 'package:color_generator/features/home/view/home_screen.dart';
import 'package:flutter/material.dart';

/// This is the stateless widget that the main method instantiates.
class MyApp extends StatelessWidget {
  /// This is the Constructor of [MyApp] class
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Generator',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomeScreen(),
    );
  }
}
