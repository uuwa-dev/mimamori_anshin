import 'package:flutter/material.dart';

class ChildDestinationListScreen extends StatelessWidget {
  const ChildDestinationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destination List'),
      ),
      body: const Center(
        child: Text('Child Destination List Screen'),
      ),
    );
  }
}

