import 'package:flutter/material.dart';
import 'package:web_portfolio/app/utils/navigation_animations.dart';
import 'package:web_portfolio/app/view/home_page/home_page.dart';
import 'package:web_portfolio/routing/routes.dart';

mixin RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home:
        return SlideAnimationTween(widget: HomePage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<void>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
            title: const Text('Error')
        ),
        body: const Center(
            child: Text('Error Screen')
        ),
      );
    });
  }
}
