import 'package:flutter/material.dart';
import 'package:travel/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blueAccent, secondary: Colors.blueGrey),
        // useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: appRoutes,
    );
  }
}
