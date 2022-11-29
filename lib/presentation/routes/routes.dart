import 'package:flutter/material.dart';
import 'package:refka/presentation/pages/create_account/create_account_page.dart';

import '../pages/create_and_login/create_and_login_page.dart';
import '../pages/login/login_page.dart';

class Routes {
  static const createAndLogin = '/';
  static const createAccount = '/createAccount';
  static const login = '/login';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args =
          routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case createAndLogin:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const CreateAndLoginPage(),
          );
        case createAccount:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const CreateAccauntPage(),
          );
        case login:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const LoginPage(),
          );
        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const CreateAndLoginPage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CreateAndLoginPage(),
      );
    }
  }
}
