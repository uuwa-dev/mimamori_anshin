import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade200, Colors.blue.shade600],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(_cardSpacing),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Lottie
            Lottie.asset(
              'assets/lottie/role_selection.json',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 24),
            // カード群
            _buildRoleCard(
              context,
              icon: Icons.person,
              label: '保護者',
              description: 'お子さまの利用状況を管理',
              color: Colors.teal.shade400,
              route: '/parentHome',
            ),
            const SizedBox(height: _cardSpacing),
            _buildRoleCard(
              context,
              icon: Icons.child_care,
              label: '子ども',
              description: '学習＆ゲームを楽しもう！',
              color: Colors.pink.shade300,
              route: '/childHome',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () => context.go('/settings'),
        child: const Icon(Icons.settings),
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
              Hero(tag: 'role-$label', child: Icon(icon, size: 56, color: Colors.white)),
              const SizedBox(height: 12),
              Text(label, style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white)),
              const SizedBox(height: 8),
              Text(description, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white70)),
            ],
          ),
        ),
      ),
    );
  }
}
