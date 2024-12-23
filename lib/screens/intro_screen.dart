

import 'package:audino_ai/screens/home_screens.dart';
import 'package:flutter/material.dart';
class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF9D00FF),
                  Color(0xFF00C8FF),
                ],
              ),
            ),
          ),
          // Design elements (rectangles)
          Positioned(
            top: 50,
            left: 30,
            child: Container(
              width: 30,
              height: 30,
              color: Color(0xFF00C8FF),
            ),
          ),
          Positioned(
            top: 100,
            right: 50,
            child: Container(
              width: 30,
              height: 30,
              color: Color(0xFF9D00FF),
            ),
          ),
          Positioned(
            top: 200,
            left: 100,
            child: Container(
              width: 20,
              height: 20,
              color: Color(0xFF9D00FF),
            ),
          ),
          Positioned(
            top: 250,
            right: 30,
            child: Container(
              width: 20,
              height: 20,
              color: Color(0xFF00C8FF),
            ),
          ),
          Positioned(
            bottom: 150,
            left: 50,
            child: Container(
              width: 20,
              height: 20,
              color: Color(0xFF00C8FF),
            ),
          ),
          Positioned(
            top: 230,
            child: Container(
              width: 30,
              height: 30,
              color: Color(0xFF9D00FF),
            ),
          ),
          // Centered content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/Logo.png',
                  width: 200, // Set your desired width
                ),
                const Text(
                  'The Playground of Audio and Video Magic',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Step into our playground of AI wizardry, where audio becomes text, and video turns into concise gems. Elevate your content experience today.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40),
                TextButton(

                  onPressed: () {
                    // Navigate to HomeScreen when the button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, // Text color
                    backgroundColor: Colors.white, // Background color
                    padding: EdgeInsets.symmetric(horizontal: 75, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Let's get started!",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}