import 'package:flutter/material.dart';
import 'package:todo_list/Cards.dart';

class Planned extends StatefulWidget {
  const Planned({super.key});

  @override
  State<Planned> createState() => _PlannedState();
}

class _PlannedState extends State<Planned> {
  @override
  Widget build(BuildContext context) {
    String priority='Planned';
    return Scaffold(
      appBar: AppBar(
        title: Text('Planned'),
      ),
      body:Cards(priority) ,

    );;
  }
}
