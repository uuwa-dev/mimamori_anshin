import 'package:flutter/material.dart';

import '../widgets/role_selection_card.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Role'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Role Selection Screen'),
            SizedBox(height: 24),
            RoleSelectionCard(label: 'Parent', route: '/parentHome'),
            SizedBox(height: 16),
            RoleSelectionCard(label: 'Child', route: '/childHome'),
          ],
        ),
      ),
    );
  }
}

