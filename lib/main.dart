import 'package:flutter/material.dart';
import 'package:flutter_application_1/Logins/Login.dart';
import 'package:flutter_application_1/Screens/Get_X.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(Object context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetX(),
    );
  }
}
