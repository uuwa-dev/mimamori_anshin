import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const double _cardSpacing = 16;

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Role'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(_cardSpacing),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RoleSelectionCard(
              icon: Icons.person,
              label: '保護者',
              description: '保護者向け機能を利用します',
              onTap: () => context.go('/parentHome'),
            ),
            const SizedBox(height: _cardSpacing),
            RoleSelectionCard(
              icon: Icons.child_care,
              label: '子ども',
              description: '子ども向け機能を利用します',
              onTap: () => context.go('/childHome'),
            ),
          ],
        ),
      ),
    );
  }
}

class RoleSelectionCard extends StatelessWidget {
  const RoleSelectionCard({
    super.key,
    required this.icon,
    required this.label,
    required this.description,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(_cardSpacing),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 48),
              const SizedBox(height: 8),
              Text(
                label,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                description,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


