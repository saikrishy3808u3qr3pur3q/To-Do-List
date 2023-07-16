import 'package:flutter/material.dart';
import 'package:todo_list/Home.dart';
import 'package:todo_list/Task.dart';
import 'package:todo_list/MyDay.dart';
import 'Important.dart';
import 'Flagged.dart';
import 'Planned.dart';

void main() {
  runApp(MaterialApp(

    routes: {
      '/':(context)=>Home(),
      '/tasks':(context)=>Task(),
      '/myday':(context)=>MyDay(),
      '/important':(context)=>Important(),
      '/flagged':(context)=>Flagged(),
      '/planned':(context)=>Planned(),


    },

  ));
}

