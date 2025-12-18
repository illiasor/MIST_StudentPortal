import 'package:flutter/material.dart';

class HealthScreen extends StatefulWidget {
  final bool isEnglish;
  const HealthScreen({super.key, required this.isEnglish});

  @override
  State<HealthScreen> createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  bool _drankWater = false;
  bool _tookBreak = false;
  bool _eyeExercise = false;
  bool _walked = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isEn = widget.isEnglish;

    return Scaffold(
      appBar: AppBar(
        title: Text(isEn ? 'Health & Focus' : 'Здоров’я та Фокус'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isEn ? 'PC Work Hygiene' : 'Гігієна при роботі за ПК',
                style: TextStyle(
                  fontSize: 22, 
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 10),
              
              _buildTipCard(
                context,
                icon: Icons.remove_red_eye,
                title: isEn ? '20-20-20 Rule' : 'Правило 20-20-20',
                description: isEn 
                    ? 'Every 20 minutes look at something 20 feet away for 20 seconds.' 
                    : 'Кожні 20 хвилин дивіться на об\'єкт за 20 метрів протягом 20 секунд.',
              ),
              _buildTipCard(
                context,
                icon: Icons.chair,
                title: isEn ? 'Posture' : 'Постава',
                description: isEn 
                    ? 'Keep your back straight, monitor should be at eye level.' 
                    : 'Тримайте спину рівно, монітор має бути на рівні очей.',
              ),
               _buildTipCard(
                context,
                icon: Icons.timer,
                title: isEn ? 'Breaks' : 'Перерви',
                description: isEn 
                    ? 'Take a 5-minute stretch every hour of sitting.' 
                    : 'Робіть 5-хвилинну розминку кожну годину сидіння.',
              ),

              const SizedBox(height: 30),
              const Divider(thickness: 2),
              const SizedBox(height: 10),

              Text(
                isEn ? 'Habit Tracker for Today' : 'Трекер звичок на сьогодні',
                style: TextStyle(
                  fontSize: 22, 
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
              Text(
                isEn ? 'Mark completed actions:' : 'Відзначте виконані дії:',
                style: TextStyle(color: colorScheme.onSurfaceVariant),
              ),
              const SizedBox(height: 10),

              CheckboxListTile(
                title: Text(isEn ? 'Drink a glass of water' : 'Випити склянку води'),
                secondary: Icon(Icons.local_drink, color: colorScheme.primary),
                activeColor: colorScheme.primary,
                value: _drankWater,
                onChanged: (bool? value) {
                  setState(() {
                    _drankWater = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text(isEn ? 'Take a 5 min break' : 'Зробити перерву на 5 хв'),
                secondary: Icon(Icons.access_time, color: colorScheme.primary),
                activeColor: colorScheme.primary,
                value: _tookBreak,
                onChanged: (bool? value) {
                  setState(() {
                    _tookBreak = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text(isEn ? 'Eye exercise' : 'Вправа для очей'),
                secondary: Icon(Icons.visibility, color: colorScheme.primary),
                activeColor: colorScheme.primary,
                value: _eyeExercise,
                onChanged: (bool? value) {
                  setState(() {
                    _eyeExercise = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text(isEn ? 'Short walk' : 'Коротка прогулянка'),
                secondary: Icon(Icons.directions_walk, color: colorScheme.primary),
                activeColor: colorScheme.primary,
                value: _walked,
                onChanged: (bool? value) {
                  setState(() {
                    _walked = value!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTipCard(BuildContext context, {required IconData icon, required String title, required String description}) {
    final colorScheme = Theme.of(context).colorScheme;
    
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, size: 40, color: colorScheme.primary),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}