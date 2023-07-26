/* 
==============First ui creation==============

import 'package:flutter/material.dart';
import 'package:send_and_return_data_among_screens/ui/detail_screen.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index){
          return ListTile(
               title: Text("hello"),
               onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
               },
          );
        }),
    );
  }
} */
import 'package:flutter/material.dart';
import 'package:send_and_return_data_among_screens/model/todo_model.dart';
import 'package:send_and_return_data_among_screens/ui/detail_screen.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key, required this.todos,});

  // second
  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context,index){
          return ListTile(
               title: Text(todos[index].title),//fourth process
               //When a user taps the ListTile, navigate to the DetailScreen.
//             // Notice that you're not only creating a DetailScreen, you're
//             // also passing the current todo through to it.
               onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(todo: todos[index],)));
               },
          );
        }),
    );
  }
}

