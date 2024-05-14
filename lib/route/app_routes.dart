import 'package:flutter/material.dart';
import '../page/home_page.dart';
import '../page/explore_page.dart';
import '../page/profile_page.dart';
import '../page/settings_page.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const HomePage(),
    '/explore': (context) => const ExplorePage(),
    '/profile': (context) => const ProfilePage(),
    '/settings': (context) => const SettingsPage(),
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    WidgetBuilder builder = routes[settings.name]!;
    final args = settings.arguments as bool?;
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => builder(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final begin = args == true ? Offset(-1.0, 0.0) : Offset(1.0, 0.0);
        final end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
