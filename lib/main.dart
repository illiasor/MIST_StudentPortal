import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(const StudentPortalApp());
}

class StudentPortalApp extends StatefulWidget {
  const StudentPortalApp({super.key});

  @override
  State<StudentPortalApp> createState() => _StudentPortalAppState();
}

class _StudentPortalAppState extends State<StudentPortalApp> {
  bool _isDarkTheme = false;
  bool _isEnglish = false; 

  void toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
  }

  void toggleLanguage() {
    setState(() {
      _isEnglish = !_isEnglish;
    });
  }

  @override
  Widget build(BuildContext context) {
    const transitions = PageTransitionsTheme(
      builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    );

    return MaterialApp(
      title: 'Student Portal',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        canvasColor: const Color(0xFFFFF8E1), 
        scaffoldBackgroundColor: const Color(0xFFFFF8E1), 
        pageTransitionsTheme: transitions,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange, 
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black87),
          bodyLarge: TextStyle(color: Colors.black87),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        canvasColor: const Color(0xFF3E2723), 
        scaffoldBackgroundColor: const Color(0xFF3E2723), 
        pageTransitionsTheme: transitions,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          brightness: Brightness.dark,
          surface: const Color(0xFF4E342E),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white70),
          bodyLarge: TextStyle(color: Colors.white),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF271c19),
          foregroundColor: Colors.orange[100],
        ),
      ),
      
      themeMode: _isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      home: HomeScreen(
        onThemeChanged: toggleTheme, 
        isDark: _isDarkTheme,
        onLanguageChanged: toggleLanguage,
        isEnglish: _isEnglish,
      ),
    );
  }
}