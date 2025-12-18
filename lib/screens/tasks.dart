import 'package:flutter/material.dart';
import '../data/tasks_data.dart';

class TasksScreen extends StatefulWidget {
  final bool isEnglish;
  const TasksScreen({super.key, required this.isEnglish});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  late List<Subject> subjects;

  @override
  void initState() {
    super.initState();
    subjects = getStudentSubjects(widget.isEnglish);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isEnglish ? 'Tasks' : 'Завдання'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          final subject = subjects[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                  ),
                  child: Text(
                    subject.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                ...subject.tasks.map((task) {
                  return CheckboxListTile(
                    activeColor: colorScheme.primary,
                    title: Text(
                      task.title,
                      style: TextStyle(
                        decoration: task.isDone
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                        color: task.isDone ? Colors.grey : null,
                      ),
                    ),
                    subtitle: Text(
                      '${widget.isEnglish ? 'Deadline' : 'Дедлайн'}: ${task.deadline}',
                      style: TextStyle(
                        color: task.isDone ? Colors.grey : colorScheme.error,
                      ),
                    ),
                    value: task.isDone,
                    onChanged: (bool? value) {
                      setState(() {
                        task.isDone = value!;
                      });
                    },
                  );
                }),
              ],
            ),
          );
        },
      ),
    );
  }
}