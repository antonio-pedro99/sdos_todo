import 'package:flutter/material.dart';
import 'package:sdos_todo/app/models/todo.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({super.key, required this.todo});

  final Todo todo;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.title),
      subtitle: Text(todo.description),
      trailing: Checkbox(
        value: todo.done,
        onChanged: (value) {},
      ),
    );
  }
}
