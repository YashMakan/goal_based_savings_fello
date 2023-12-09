import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/colors.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/enums.dart';

class ChooseInvestmentType extends StatelessWidget {
  final Investment? selectedInvestment;
  final Function(Investment)? onTileClicked;

  const ChooseInvestmentType(
      {super.key, this.selectedInvestment, this.onTileClicked});

  bool get isGoldSelected =>

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
                color: CustomColors.darkGreen,
                borderRadius: BorderRadius.circular(8)),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
                color: CustomColors.darkGreen,
                borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ],
    );
  }
}
