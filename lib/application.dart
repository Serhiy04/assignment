import 'package:assignment/core/decorations/theme_data.dart';
import 'package:assignment/ui/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment App',
      theme: lightTheme,
      home: const HomeScreen(),
    );
  }
}
