import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

