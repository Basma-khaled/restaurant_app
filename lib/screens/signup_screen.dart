import 'package:flutter/material.dart';
import 'home_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orange, Colors.deepOrange],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ), // LinearGradient
            ), // BoxDecoration
          ), // Container
          // المحتوى الرئيسي
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create New Account',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ), // TextStyle
                  ), // Text
                  SizedBox(height: 40),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      prefixIcon: Icon(Icons.person, color: Colors.orange),
                    ), // InputDecoration
                  ), // TextField
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email, color: Colors.orange),
                    ), // InputDecoration
                  ), // TextField
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock, color: Colors.orange),
                    ), // InputDecoration
                  ), // TextField
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeScreen()),
                        );
                      },
                      child: Text('SIGN UP', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ), // ElevatedButton
                  ), // SizedBox
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('Already have an account? Login', style: TextStyle(color: Colors.white)),
                  ), // TextButton
                ],
              ), // Column
            ), // SingleChildScrollView
          ), // Center
        ],
      ), // Stack
    ); // Scaffold
  }
}
