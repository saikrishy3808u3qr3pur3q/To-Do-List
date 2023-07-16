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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('My Day'),
      ),
      body:Cards() ,

    );
  }
}
