import 'package:e_learning_dashboard/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-learning dashboard',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'georgia'),
      home: const Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
