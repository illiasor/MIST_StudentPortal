import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final bool isEnglish;
  const ProfileScreen({super.key, required this.isEnglish});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(isEnglish ? 'Profile' : 'Профіль'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: const AssetImage('assets/student_photo.jpg'),
                        backgroundColor: colorScheme.primaryContainer,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        isEnglish ? 'Sorotskyi Illia' : 'Сороцький Ілля',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onSurface,
                        ),
                      ),
                      Text(
                        isEnglish ? 'Student of group ITAI-23-3' : 'Студент групи ІТШІ-23-3',
                        style: TextStyle(
                          fontSize: 16, 
                          color: colorScheme.onSurfaceVariant
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.school, color: colorScheme.primary),
                title: Text(isEnglish ? 'Major/Department' : 'Спеціальність/Кафедра'),
                subtitle: Text(isEnglish ? '122. Computer Science \nArtificial intelligence' : "122. Комп'ютерні науки \nШтучного інтелекту"),
              ),
              const Divider(),
              ListTile(
                leading: Icon(Icons.card_membership, color: colorScheme.primary),
                title: Text(isEnglish ? 'Student ID' : 'Номер студентського'),
                subtitle: const Text('ХА14310195'),
              ),
              const Divider(),
              ListTile(
                leading: Icon(Icons.email, color: colorScheme.primary),
                title: const Text('Email'),
                subtitle: const Text('illia.sorotskyi@nure.ua'),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isEnglish ? 'About me:' : 'Про себе:',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      isEnglish 
                        ? 'Interested in mobile development, learning Flutter.'
                        : 'Цікавлюся розробкою мобільних додатків, вивчаю Flutter.',
                      style: TextStyle(fontSize: 14, color: colorScheme.onSurfaceVariant),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}