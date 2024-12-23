import 'package:audino_ai/screens/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690), // Define your design size here
      minTextAdapt: true, // Optional: adapt text size based on screen
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: IntroScreen(),
        );
      },
    );
  }
}



//
// lib/
// │
// ├── main.dart
// │
// ├── screens/
// │   ├── home_screen.dart
// │   ├── content_ai_screen.dart
// │   ├── meetings_ai_screen.dart
// │   ├── call_recording_ai_screen.dart
// │   ├── hate_speech_ai_screen.dart
// │   └── some_other_feature_screen.dart
// │
// ├── widgets/
// │   ├── feature_tile.dart
// │   ├── custom_app_bar.dart
// │
// ├── models/                  # Empty for now, but can be used in the future.
// │   └── feature_model.dart
// │
// ├── services/                # Empty for now, but can be used in the future.
// │   └── api_service.dart
// │
// ├── utils/
// │   └── constants.dart
// │   └── theme.dart
// │
// ├── providers/               # Empty for now, but can be used in the future.
// │   └── feature_provider.dart
// │
// └── assets/
// ├── images/
// │   ├── logo.png
// │   ├── content_ai.png
// │   ├── meetings_ai.png
// │   ├── call_recording_ai.png
// │   └── hate_speech_ai.png
// └── fonts/             # Empty for now, but can be used for custom fonts.
//
//



