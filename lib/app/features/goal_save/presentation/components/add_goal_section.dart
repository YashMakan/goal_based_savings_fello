import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/colors.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/chip_widget.dart';

class AddGoalSection extends StatelessWidget {
  const AddGoalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 2,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.transparent,
              Colors.white,
            ])),
          ),
        ),
        ChipWidget(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Text('Add Goal'),
        ),
        Expanded(
          child: Container(
            height: 2,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.white,
              Colors.transparent,
            ])),
          ),
        ),
      ],
    );
  }
}
