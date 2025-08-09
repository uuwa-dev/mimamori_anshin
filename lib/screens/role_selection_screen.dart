import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const double _cardSpacing = 16;

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('ご利用者を選択'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
        padding: const EdgeInsets.all(_cardSpacing),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildRoleCard(
              context,
              icon: Icons.person,
              label: '保護者はこちら',
              description: 'お子さまの行動状況を確認できます',
              color: const Color(0xFFF18D9E),
              route: '/parentHome',
            ),
            const SizedBox(height: _cardSpacing),
            _buildRoleCard(
              context,
              icon: Icons.child_care,
              label: '子どもはこちら',
              description: 'お出かけする前に報告しよう！',
              color: const Color(0xFF5BC8AC),
              route: '/childHome',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoleCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String description,
    required Color color,
    required String route,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 6,
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () async {
          context.go(route);
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Hero(tag: 'role-$label', child: Icon(icon, size: 56)),
              const SizedBox(height: 12),
              Text(label, style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 8),
              Text(description, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
