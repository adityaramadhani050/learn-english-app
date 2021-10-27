import 'package:flutter/material.dart';
import 'package:learn_english_app/pages/home_screen.dart';
import 'package:learn_english_app/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lear English App',
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/homeScreen': (context) => const HomeScreen(),
      },
    );
  }
}
