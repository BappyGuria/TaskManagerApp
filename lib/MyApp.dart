import 'package:flutter/material.dart';
import 'package:tastmanager/ui/screen/splash_screen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide.none
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none
            ),
          ),
          textTheme: const TextTheme(
            titleLarge: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500
            ),
          ),
          primaryColor: Colors.green,
          primarySwatch: Colors.green,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10)
            )
          )
        ),
        home: SplashScreen(),
    );
  }
}
