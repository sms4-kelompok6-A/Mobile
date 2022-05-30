import 'package:flutter/material.dart';
import 'package:majestic_banyuangi/pages/home_page.dart';
import 'package:majestic_banyuangi/pages/signin_page.dart';
import 'package:majestic_banyuangi/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Majestic Banyuangi',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/signin': (context) => const SigninPage(),
        '/signup': (context) => const SignupPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
