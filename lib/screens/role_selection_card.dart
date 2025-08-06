import 'package:flutter/material.dart';
import 'package:mimamori_anshin/constants/app_style.dart';

class RoleSelectionCard extends StatelessWidget {
  const RoleSelectionCard({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primary,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: AppFontSizes.medium,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
