import 'package:flutter/material.dart';

class CompletedTodo extends StatefulWidget {
  const CompletedTodo({super.key});

  @override
  State<CompletedTodo> createState() => _CompletedTodoState();
}

class _CompletedTodoState extends State<CompletedTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Completed Todo Page'),
        elevation: 2.5,
      ),
      body: const Center(
        child: Text(
          'This is the Completed page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
