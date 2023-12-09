import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/shared/config/theme/text_theme.dart';

class GreetingsSection extends StatelessWidget {
  const GreetingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Hi Yash',
            style:
            context.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
          Text(
            'Welcome to Fello',
            style:
            context.titleSmall?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
