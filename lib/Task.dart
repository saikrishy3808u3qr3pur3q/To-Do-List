import 'package:flutter/material.dart';
import 'package:todo_list/Cards.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task '),
      ),
      body:Cards() ,

    );;
  }
}
