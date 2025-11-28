import 'package:flutter/material.dart';
import 'package:heshamonganrateroute/content/approute.dart';
import 'package:heshamonganrateroute/view/screen/home.dart';
import 'package:heshamonganrateroute/view/screen/onborading.dart';


class HeshamaqlanRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Approute.onboarding:
        return MaterialPageRoute(
          builder: (_) => const Onboarding(),
          settings: settings,
        );

      case Approute.home:
        final args = settings.arguments as Map<String, dynamic>?;

        final String? username = args?['username'];
        return MaterialPageRoute(
          builder: (_) => HomeView(username: username),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('404 - Route not found')),
          ),
          settings: settings,
        );
    }
  }
}