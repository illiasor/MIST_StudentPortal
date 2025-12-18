class Task {
  final String title;
  final String deadline;
  bool isDone;

  Task(this.title, this.deadline, {this.isDone = false});
}

class Subject {
  final String name;
  final List<Task> tasks;

  Subject(this.name, this.tasks);
}

List<Subject> getStudentSubjects(bool isEnglish) {
  if (isEnglish) {
    return [
      Subject(
        'Data Mining (IAD)',
        [
          Task('Lab work 1', '28.10.2025', isDone: true),
          Task('Lab work 2', '18.11.2025', isDone: true),
          Task('Lab work 3', '09.12.2025', isDone: false),
          Task('Lab work 4', '23.12.2025', isDone: false),
          Task('Lab work 5', '30.12.2025', isDone: false),
        ],
      ),
      Subject(
        'Data Mining Methods in Cybersecurity (MDMSK)',
        [
          Task('Practical task 1', '25.12.2025', isDone: false),
          Task('Practical task 2', '25.12.2025', isDone: false),
        ],
      ),
      Subject(
        'Mobile Internet, Systems & Technologies (MIST)',
        [
          Task('Pr. work 1: App Structure', '24.12.2025', isDone: true),
        ],
      ),
      Subject(
        'Data Processing with Python (ODZR)',
        [
          Task('Practical task 1', 'No deadline', isDone: true),
          Task('Practical task 2', 'No deadline', isDone: true),
        ],
      ),
      Subject(
        'System Analysis (SA)',
        [
          Task('Practical lesson 1', '01.11.2025', isDone: true),
          Task('Practical lesson 2', '20.11.2025', isDone: true),
          Task('Practical lesson 3', '26.11.2025', isDone: true),
          Task('Practical lesson 4', '05.12.2025', isDone: false),
          Task('Practical lesson 5', '25.12.2025', isDone: false),
        ],
      ),
      Subject(
        'Physical Education (PE)',
        [
          Task('Flashmob 1', '15-19.09.2025', isDone: true),
          Task('Flashmob 2', '22-26.09.2025', isDone: true),
          Task('Flashmob 3', '10-14.11.2025', isDone: false),
        ],
      ),
      Subject(
        'Philosophy of Artificial Intelligence (PAI)',
        [
          Task('Seminar 1 (Essay + Presentation)', 'No deadline', isDone: true),
        ],
      ),
      Subject(
        'Formal Systems & Math Foundations (FStM)',
        [
          Task('Test 1', '20.10.2025', isDone: true),
          Task('Test 2', '24.12.2025', isDone: false),
        ],
      ),
      Subject(
        'Functional Program Design in Scala (FDP)',
        [
          Task('Code Grader 1', '23.10.2025', isDone: true),
          Task('Code Grader 2', '06.11.2025', isDone: true),
          Task('Code Grader 3', '20.11.2025', isDone: true),
          Task('Code Grader 4', '04.12.2025', isDone: false),
          Task('Code Grader 5', '18.12.2025', isDone: false),
        ],
      ),
    ];
  } else {
    return [
      Subject(
        'Інтелектуальний аналіз даних (ІАД)',
        [
          Task('Лаб. робота 1', '28.10.2025', isDone: true),
          Task('Лаб. робота 2', '18.11.2025', isDone: true),
          Task('Лаб. робота 3', '09.12.2025', isDone: false),
          Task('Лаб. робота 4', '23.12.2025', isDone: false),
          Task('Лаб. робота 5', '30.12.2025', isDone: false),
        ],
      ),
      Subject(
        'Методи Data Mining в системах кібербезпеки (МDMСК)',
        [
          Task('Практичне завдання 1', '25.12.2025', isDone: false),
          Task('Практичне завдання 2', '25.12.2025', isDone: false),
        ],
      ),
      Subject(
        'Мобільний Internet, системи та технології (МІСТ)',
        [
          Task('Пр. робота 1: Структура додатка', '24.12.2025', isDone: true),
        ],
      ),
      Subject(
        'Обробка даних засобами Python (ОДЗР)',
        [
          Task('Практичне завдання 1', 'Без дедлайну', isDone: true),
          Task('Практичне завдання 2', 'Без дедлайну', isDone: true),
        ],
      ),
      Subject(
        'Системний аналіз (СА)',
        [
          Task('Практичне заняття 1', '01.11.2025', isDone: true),
          Task('Практичне заняття 2', '20.11.2025', isDone: true),
          Task('Практичне заняття 3', '26.11.2025', isDone: true),
          Task('Практичне заняття 4', '05.12.2025', isDone: false),
          Task('Практичне заняття 5', '25.12.2025', isDone: false),
        ],
      ),
      Subject(
        'Фізичне виховання (ФВ)',
        [
          Task('Флешмоб 1', '15-19.09.2025', isDone: true),
          Task('Флешмоб 2', '22-26.09.2025', isDone: true),
          Task('Флешмоб 3', '10-14.11.2025', isDone: false),
        ],
      ),
      Subject(
        'Філософія штучного інтелекту (ФШІ)',
        [
          Task('Семінар 1 (Реферат + презентація)', 'Без дедлайну', isDone: true),
        ],
      ),
      Subject(
        'Формальні системи і мат. основи (ФСтМ)',
        [
          Task('Кр1 Тест', '20.10.2025', isDone: true),
          Task('Кр2 Тест', '24.12.2025', isDone: false),
        ],
      ),
      Subject(
        'Функціональний дизайн програм на Scala (ФДП)',
        [
          Task('Грейдер коду 1', '23.10.2025', isDone: true),
          Task('Грейдер коду 2', '06.11.2025', isDone: true),
          Task('Грейдер коду 3', '20.11.2025', isDone: true),
          Task('Грейдер коду 4', '04.12.2025', isDone: false),
          Task('Грейдер коду 5', '18.12.2025', isDone: false),
        ],
      ),
    ];
  }
}