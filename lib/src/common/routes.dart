import 'package:flutter/material.dart';

import '../features/features.dart';
import '../features/user/user.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> main = {
    MyHomePage.route: (context) => const MyHomePage(),
    MySettingsPage.route: (context) => const MySettingsPage(),
    UserPage.route: (context) => const UserPage(),
  };
}
