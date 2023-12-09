import 'dart:math';

import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/shared/config/assets/icon.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/enums.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/chip_widget.dart';

class GoalSavePageAppBar extends StatelessWidget {
  final Investment? investment;

  const GoalSavePageAppBar({super.key, this.investment});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.rotate(
          angle: pi,
          child: InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(AppIcons.rightArrow),
            ),
          ),
        ),
        const SizedBox(width: 16),
        const Text('Invest: Goal Based'),
        const Spacer(),
        ChipWidget(
            child: Row(
          children: [
            const Text('Help'),
            const SizedBox(width: 8),
            Image.asset(
              AppIcons.headset,
              width: 16,
            )
          ],
        ))
      ],
    );
  }
}
