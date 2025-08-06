import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'screens/child_destination_edit_screen.dart';
import 'screens/child_destination_list_screen.dart';
import 'screens/child_destination_map_screen.dart';
import 'screens/child_destination_register_screen.dart';
import 'screens/child_home_screen.dart';
import 'screens/parent_child_list_screen.dart';
import 'screens/parent_destination_map_screen.dart';
import 'screens/parent_home_screen.dart';
import 'screens/parent_settings_screen.dart';
import 'screens/role_selection_screen.dart';
import 'screens/splash_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
      GoRoute(path: '/roleSelection', builder: (context, state) => const RoleSelectionScreen()),
      GoRoute(path: '/parentHome', builder: (context, state) => const ParentHomeScreen()),
      GoRoute(path: '/childList', builder: (context, state) => const ParentChildListScreen()),
      GoRoute(path: '/parentDestinationMap', builder: (context, state) => const ParentDestinationMapScreen()),
      GoRoute(path: '/parentSettings', builder: (context, state) => const ParentSettingsScreen()),
      GoRoute(path: '/childHome', builder: (context, state) => const ChildHomeScreen()),
      GoRoute(path: '/childDestinationList', builder: (context, state) => const ChildDestinationListScreen()),
      GoRoute(path: '/childDestinationMap', builder: (context, state) => const ChildDestinationMapScreen()),
      GoRoute(path: '/childDestinationRegister', builder: (context, state) => const ChildDestinationRegisterScreen()),
      GoRoute(path: '/childDestinationEdit', builder: (context, state) => const ChildDestinationEditScreen()),
    ],
  );
});
