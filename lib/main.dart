import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_gamification_app/provider/quiz_provider.dart';
import 'package:quiz_gamification_app/screens/home_screen.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => QuizProvider(),
      child: QuizApp(),
    ),
  );
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz Gamification',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}