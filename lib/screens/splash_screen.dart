import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      final timer = Timer(const Duration(seconds: 2), () {
        context.go('/roleSelection');
      });
      return timer.cancel;
    }, const []);

    return const Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}

