import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';
import 'screens/role_selection_screen.dart';
import 'screens/parent_home_screen.dart';
import 'screens/child_list_screen.dart';
import 'screens/parent_destination_map_screen.dart';
import 'screens/parent_settings_screen.dart';
import 'screens/child_home_screen.dart';
import 'screens/child_destination_list_screen.dart';
import 'screens/child_destination_map_screen.dart';
import 'screens/child_destination_register_screen.dart';
import 'screens/child_destination_edit_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mimamori Anshin',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        '/roleSelection': (context) => const RoleSelectionScreen(),
        '/parentHome': (context) => const ParentHomeScreen(),
        '/childList': (context) => const ChildListScreen(),
        '/parentDestinationMap': (context) => const ParentDestinationMapScreen(),
        '/parentSettings': (context) => const ParentSettingsScreen(),
        '/childHome': (context) => const ChildHomeScreen(),
        '/childDestinationList': (context) => const ChildDestinationListScreen(),
        '/childDestinationMap': (context) => const ChildDestinationMapScreen(),
        '/childDestinationRegister': (context) => const ChildDestinationRegisterScreen(),
        '/childDestinationEdit': (context) => const ChildDestinationEditScreen(),
      },
    );
  }
}

