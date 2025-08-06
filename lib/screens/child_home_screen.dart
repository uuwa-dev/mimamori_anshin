import 'package:flutter/material.dart';
import 'package:mimamori_anshin/constants/app_style.dart';

class ChildHomeScreen extends StatelessWidget {
  const ChildHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Child Home',
          style: TextStyle(fontSize: AppFontSizes.large),
        ),
      ),
      body: const Center(
        child: Text(
          'Child Home Screen',
          style: TextStyle(fontSize: AppFontSizes.medium),
        ),
      ),
    );
  }
}
