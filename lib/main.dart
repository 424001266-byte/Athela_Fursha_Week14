
import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(const CyberAwarenessApp());
}

class CyberAwarenessApp extends StatelessWidget {
  const CyberAwarenessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cyber Awareness',

      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F7FB),

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF142D50),
          primary: const Color(0xFF142D50),
          secondary: const Color(0xFFFF9138),
        ),

        fontFamily: 'Roboto',
      ),

      // Default preview: Screen 2 - Dashboard
      home: const DashboardScreen(),
    );
  }
}
