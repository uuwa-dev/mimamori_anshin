import 'package:flutter/material.dart';

class ChildDestinationEditScreen extends StatelessWidget {
  const ChildDestinationEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Destination'),
      ),
      body: const Center(
        child: Text('Child Destination Edit Screen'),
      ),
    );
  }
}

