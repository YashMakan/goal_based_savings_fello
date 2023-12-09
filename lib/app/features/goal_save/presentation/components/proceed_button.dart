import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/colors.dart';

class ProceedButton extends StatelessWidget {
  const ProceedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SwipeButton.expand(
      thumb: const Icon(
        Icons.double_arrow_rounded,
        color: Colors.white,
      ),
      activeThumbColor: CustomColors.darkGreen,
      activeTrackColor: Colors.grey.shade300,
      onSwipe: () {},
      child: const Text(
        "Invest in FelloFlo",
        style: TextStyle(
          color: CustomColors.darkGreen,
        ),
      ),
    );
  }
}
