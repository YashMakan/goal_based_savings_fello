import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/models/investment_details.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/presentation/bloc/goal_save_bloc/bloc.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/colors.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/enums.dart';
import 'package:goal_based_savings_fello/app/shared/core/inject_dependency/dependencies.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProceedButton extends StatefulWidget {
  final Investment investment;

  const ProceedButton({super.key, required this.investment});

  @override
  State<ProceedButton> createState() => _ProceedButtonState();
}

class _ProceedButtonState extends State<ProceedButton> {
  String get text =>
      widget.investment == Investment.digitalGold ? "Gold" : "FelloFlo";

  final goalSaveBloc = sl<GoalSaveBloc>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: 80.w,
      child: BlocListener(
        bloc: goalSaveBloc,
        listenWhen: (current, previous) => previous is GoalSaveActionState,
        listener: (context, state) {
          Navigator.pop(context);
        },
        child: SwipeButton.expand(
          thumb: const Icon(
            Icons.double_arrow_rounded,
            color: Colors.white,
          ),
          activeThumbColor: CustomColors.darkGreen,
          activeTrackColor: Colors.white,
          onSwipe: () {
            goalSaveBloc.add(InvestEvent(InvestmentDetails(
              name: ,
              date: ,
              amount: ,
              goalType: ,
              investmentType: ,
            )));
          },
          child: Text(
            "Invest in $text",
            style: const TextStyle(
              color: CustomColors.darkGreen,
            ),
          ),
        ),
      ),
    );
  }
}
