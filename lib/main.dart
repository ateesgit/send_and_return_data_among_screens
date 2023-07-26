/* 
==============First ui creation==============
import 'package:flutter/material.dart';
import 'package:send_and_return_data_among_screens/ui/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      // theme: ThemeData(
    
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home:const TodoScreen(),
    );
  }
}
 */

import 'package:flutter/material.dart';
import 'package:send_and_return_data_among_screens/model/todo_model.dart';
import 'package:send_and_return_data_among_screens/ui/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Passing Data Demo',
      theme: ThemeData.dark(),
      // theme: ThemeData(
    
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      debugShowCheckedModeBanner: false,
      home: TodoScreen(todos: List.generate(20, (i) => Todo(title: "Todo $i",
       description:'A description of what needs to be done for Todo $i' )),),//list generation 3rd step
    );
  }
}

// // import 'package:flutter/material.dart';



// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Passing Data',
//       home: TodosScreen(
//         todos: List.generate(
//           20,
//           (i) => Todo(
//             'Todo $i',
//             'A description of what needs to be done for Todo $i',
//           ),
//         ),
//       ),
//     ),
//   );
// }

// class TodosScreen extends StatelessWidget {
//   const TodosScreen({super.key, required this.todos});

//   final List<Todo> todos;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Todos'),
//       ),
//       body: ListView.builder(
//         itemCount: todos.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(todos[index].title),
//             // When a user taps the ListTile, navigate to the DetailScreen.
//             // Notice that you're not only creating a DetailScreen, you're
//             // also passing the current todo through to it.
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => DetailScreen(todo: todos[index]),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class DetailScreen extends StatelessWidget {
//   // In the constructor, require a Todo.
//   const DetailScreen({super.key, required this.todo});

//   // Declare a field that holds the Todo.
//   final Todo todo;

//   @override
//   Widget build(BuildContext context) {
//     // Use the Todo to create the UI.
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(todo.title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Text(todo.description),
//       ),
//     );
//   }
// }