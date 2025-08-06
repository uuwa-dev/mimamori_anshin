import 'package:flutter/material.dart';

class ParentChildListScreen extends StatelessWidget {
  const ParentChildListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final actions = [
      '8:00 登校',
      '12:00 昼食',
      '15:00 下校',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Child Action History'),
      ),
      body: ListView.builder(
        itemCount: actions.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(actions[index]),
        ),
      ),
    );
  }
}
