import 'package:flutter/material.dart';


class FlashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });

    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to My Personalised AI Tutoring WebApp✌️',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
        backgroundColor: const Color.fromARGB(255, 199, 165, 165),
    );
  }
}
