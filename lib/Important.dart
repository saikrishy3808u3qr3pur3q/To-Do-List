import 'package:flutter/material.dart';
import 'package:todo_list/Cards.dart';

class Important extends StatefulWidget {
  const Important({super.key});

  @override
  State<Important> createState() => _ImportantState();
}

class _ImportantState extends State<Important> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Important'),
      ),
      body:Cards() ,

    );;
  }
}
