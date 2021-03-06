import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github/ui/screens/home_page.dart';
import 'package:github/ui/screens/user_details_screen.dart';

class AppRoutes {
  static const String user_details = '/';
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case user_details:
        return _buildRoute(UserDetailsScreen(), settings);
      default:
        return _buildRoute(Scaffold(), settings);
    }
  }

  static _buildRoute(Widget widget, RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}
