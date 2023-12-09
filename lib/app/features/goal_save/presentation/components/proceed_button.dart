import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/colors.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/enums.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProceedButton extends StatelessWidget {
  final Investment investment;

  const ProceedButton({super.key, required this.investment});

  String get text => investment == Investment.digitalGold ? "Gold" : "FelloFlo";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: 80.w,
      child: SwipeButton.expand(
        thumb: const Icon(
          Icons.double_arrow_rounded,
          color: Colors.white,
        ),
        activeThumbColor: CustomColors.darkGreen,
        activeTrackColor: Colors.white,
        onSwipe: () {
          Navigator.pop(context);
        },
        child: Text(
          "Invest in $text",
          style: const TextStyle(
            color: CustomColors.darkGreen,
          ),
        ),
      ),
    );
  }
}
