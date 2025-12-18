import 'package:flutter/material.dart';
import 'tasks.dart';
import 'profile.dart';
import 'health.dart';

class HomeScreen extends StatelessWidget {
  final Function() onThemeChanged;
  final bool isDark;
  final Function() onLanguageChanged;
  final bool isEnglish;

  const HomeScreen({
    super.key, 
    required this.onThemeChanged, 
    required this.isDark,
    required this.onLanguageChanged,
    required this.isEnglish,
  });

  @override
  Widget build(BuildContext context) {
    final headerColor = Theme.of(context).appBarTheme.foregroundColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Portal'),
        centerTitle: true,
        
        leading: TextButton(
          onPressed: onLanguageChanged,
          child: Text(
            isEnglish ? 'EN' : 'UA',
            style: TextStyle(
              color: headerColor,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
        ),

        actions: [
          IconButton(
            icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
            onPressed: onThemeChanged,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isEnglish ? 'Welcome, Student!' : 'Вітаю, Студенте!',
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              
              Text(
                isEnglish 
                  ? 'Your assistant in studying and planning' 
                  : 'Ваш помічник у навчанні та плануванні',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16), 
              ),
              const SizedBox(height: 40),

              _buildMenuButton(
                context, 
                isEnglish ? 'Tasks' : 'Завдання', 
                Icons.list_alt, 
                TasksScreen(isEnglish: isEnglish)
              ),
              const SizedBox(height: 15),
              _buildMenuButton(
                context, 
                isEnglish ? 'Profile' : 'Профіль', 
                Icons.person, 
                ProfileScreen(isEnglish: isEnglish)
              ),
              const SizedBox(height: 15),
              _buildMenuButton(
                context, 
                isEnglish ? 'Health & Focus' : 'Здоров’я та Фокус', 
                Icons.favorite, 
                HealthScreen(isEnglish: isEnglish)
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String title, IconData icon, Widget screen) {
    return ElevatedButton.icon(
      icon: Icon(icon),
      label: Text(title),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
    );
  }
}