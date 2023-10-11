import 'package:flutter/material.dart';
import 'package:sdos_todo/app/models/todo.dart';
import 'package:sdos_todo/app/widgets/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('My TODOs'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return TodoTile(todo: Todo.fakeTodos()[index]);
              },
              itemCount: Todo.fakeTodos().length,
            )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.primary,
          onPressed: ()=> Navigator.pushNamed(context, '/add'),
          child: const Icon(Icons.add),
        ));
  }
}
