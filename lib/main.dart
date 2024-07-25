import 'package:flutter/material.dart';
import 'pages/flash_page.dart';
import 'pages/registration_page.dart';
import 'pages/login_page.dart';
import 'pages/course_selection_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FlashPage(),
        '/register': (context) => UserRegistrationPage(),
        '/login': (context) => UserLoginPage(),
        '/select-course': (context) => CourseSelectionPage(),
      },
    );
  }
}
