import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/pages/home_page.dart';

class AppRoutes {
  static const String initial = '/';
  static const String splashScreen = 'splash';
}

class NavigationManager {
  static final Map<String, WidgetBuilder> appRoutes = {
    AppRoutes.initial: (context) => const HomePage(),
  };
}
