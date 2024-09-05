// lib/main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/todo_list_screen.dart';
import 'providers/task_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TaskProvider()),
      ],
      child: MaterialApp(
        title: 'To-Do List',
        theme: ThemeData(
          primarySwatch: const Color.fromARGB(255, 28, 133, 219),
        ),
        home: TodoListScreen(),
      ),
    );
  }
}
