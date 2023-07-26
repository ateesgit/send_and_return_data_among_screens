/* 
==============First ui creation==============
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body:const Padding(
        padding:EdgeInsets.all(10.0),
        child: Text("A description of what needs to be done for Todo "),),
    );
  }
} */

import 'package:flutter/material.dart';
import 'package:send_and_return_data_among_screens/model/todo_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.todo});
 final Todo todo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding:EdgeInsets.all(10.0),
        child: Text(todo.description),),
    );
  }
}