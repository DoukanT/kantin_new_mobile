import 'package:flutter/material.dart';
import 'package:kantin_new_mobile/views/login_Page_View.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPageView(),
    );
  }
}