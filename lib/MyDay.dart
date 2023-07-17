import 'package:flutter/material.dart';
import 'package:todo_list/Cards.dart';


class MyDay extends StatefulWidget {
  const MyDay({super.key});

  @override
  State<MyDay> createState() => _MyDayState();
}

class _MyDayState extends State<MyDay> {
  @override
  List<String>? add_task ;
  String priority='MyDay';
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.green[700],
      title: Text('My Day'),
      ),
      body:Cards(priority) ,

    );
  }
}
