import 'package:flutter/material.dart';
import 'package:todo_list/Cards.dart';

class Flagged extends StatefulWidget {
  const Flagged({super.key});

  @override
  State<Flagged> createState() => _FlaggedState();
}

class _FlaggedState extends State<Flagged> {
  @override
  String priority='Flagged';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flagged'),
      ),
      body:Cards(priority) ,

    );;
  }
}
