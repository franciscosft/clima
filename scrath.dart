import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  //A task 2 não impede a task 3 de ser executada, pois a 2 é assíncrona
  task2();
  task3();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

//Maior desafio é identificar as partes de um software onde não é necessário a sincronicidade
Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);

  String result;

  //Forma como é utilizado await/future dentro de um método
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3() {
  String result = 'task 3 data';
  print('Task 3 complete');
}
