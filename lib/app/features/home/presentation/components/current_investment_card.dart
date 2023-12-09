import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/shared/config/assets/image.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/colors.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/constants.dart';
import 'package:goal_based_savings_fello/app/shared/config/routes/routes.dart';
import 'package:goal_based_savings_fello/app/shared/config/theme/text_theme.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/custom_button.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CurrentInvestmentCard extends StatelessWidget {
  const CurrentInvestmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
          color: CustomColors.darkGreen,
          borderRadius: BorderRadius.circular(8)),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -16,
            top: -30,
            child: Lottie.asset(AppImages.pigAnimation, width: 26.w),
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You\'ve Saved',
                            style: context.bodyMedium
                                ?.copyWith(color: Colors.white54)),
                        Text(
                          '${Constants.currencySymbol}230.0',
                          style: context.displaySmall?.copyWith(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        color: const Color(0xFF155B60),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text('SAFE & SECURE'),
                  ),
                  CustomButton(
                    text: "KNOW MORE",
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.goalSavePage);
                    },
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
