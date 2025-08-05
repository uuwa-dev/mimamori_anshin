import 'package:flutter/material.dart';

class ChildDestinationRegisterScreen extends StatelessWidget {
  const ChildDestinationRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Destination'),
      ),
      body: const Center(
        child: Text('Child Destination Register Screen'),
      ),
    );
  }
}

