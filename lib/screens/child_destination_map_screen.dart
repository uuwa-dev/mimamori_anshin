import 'package:flutter/material.dart';

class ChildDestinationMapScreen extends StatelessWidget {
  const ChildDestinationMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Child Destination Map'),
      ),
      body: const Center(
        child: Text('Child Destination Map Screen'),
      ),
    );
  }
}

