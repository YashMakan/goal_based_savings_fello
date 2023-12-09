import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/constants.dart';
import 'package:goal_based_savings_fello/app/shared/config/routes/routes.dart';
import 'package:goal_based_savings_fello/app/shared/config/theme/text_theme.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/custom_button.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fello Balance',
              style: context.titleLarge?.copyWith(fontWeight: FontWeight.w600),
            ),
            Text('${Constants.currencySymbol}0.0',
                style:
                    context.titleLarge?.copyWith(fontWeight: FontWeight.w800)),
          ],
        ),
        CustomButton(text: 'ADD MONEY', onPressed: () {
          Navigator.pushNamed(context, AppRoutes.goalSavePage);
        })
      ],
    );
  }
}
