import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/presentation/pages/goal_save_page.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/pages/home_page.dart';

class AppRoutes {
  static const String initial = '/';
  static const String splashPage = 'splash';
  static const String homePage = 'home';
  static const String goalSavePage = 'goal_save';
}

class NavigationManager {
  static final Map<String, WidgetBuilder> appRoutes = {
    AppRoutes.initial: (context) => const HomePage(),
    AppRoutes.homePage: (context) => const HomePage(),
    AppRoutes.goalSavePage: (context) => const GoalSavePage()
  };
}
