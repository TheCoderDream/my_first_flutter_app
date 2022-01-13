import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emre Baskan',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Space Exmplaration planner'),
      ),
      body: Column(
        children:  [
          Progress(),
          
        ],
      ),
    );
  }
}

class Progress extends StatelessWidget {

  @override
  Widget build(BuildContext context)  {
    return Column(
      children: const [
        Text("You are tis far away from me"),
        LinearProgressIndicator(value: 0.0,)
      ],
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Task( label: 'Emre',),
        Task( label: 'Emre',),
        Task( label: 'Emre',),
        Task( label: 'Emre',),
      ],
    );
  }
}

class Task extends StatelessWidget {
  final String label;

  const Task({Key? key, required this.label}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: null),
        Text(label)
      ],
    );
  }
}