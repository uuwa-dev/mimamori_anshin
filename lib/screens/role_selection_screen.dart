import 'package:flutter/material.dart';
import 'package:mimamori_anshin/constants/app_style.dart';
import 'role_selection_card.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          'Select Role',
          style: TextStyle(fontSize: AppFontSizes.large),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RoleSelectionCard(title: 'Parent', onTap: () {}),
              const SizedBox(height: 16),
              RoleSelectionCard(title: 'Child', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
