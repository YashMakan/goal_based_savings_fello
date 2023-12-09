import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/shared/config/assets/icon.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/constants.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/chip_widget.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(),
        const Spacer(),
        ChipWidget(
          child: Row(
            children: [
              Image.asset(
                AppIcons.ticket,
                width: 16,
              ),
              const SizedBox(
                width: 8,
              ),
              const Text("${Constants.currencySymbol}0")
            ],
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        ChipWidget(
          child: Row(
            children: [
              Image.asset(
                AppIcons.meter,
                width: 16,
              ),
              const SizedBox(
                width: 8,
              ),
              const Text("Level 1")
            ],
          ),
        ),
      ],
    );
  }
}
