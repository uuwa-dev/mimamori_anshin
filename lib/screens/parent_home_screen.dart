import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ParentHomeScreen extends StatelessWidget {
  const ParentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/parentChildList'),
          child: const Text('Child List'),
        ),
      ),
    );
  }
}
