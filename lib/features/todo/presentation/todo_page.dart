import 'package:flutter/material.dart';
import 'package:whenly_planner/features/todo/presentation/todo_view.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  static const String path = "/";

  @override
  Widget build(BuildContext context) {
    return TodoView();
  }
}
