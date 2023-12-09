import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/presentation/components/add_goal_section.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/presentation/components/choose_investment_type.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/presentation/components/goal_save_page_app_bar.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/presentation/components/investment_amount_slider_section.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/background_widget.dart';

class GoalSavePage extends StatefulWidget {
  const GoalSavePage({super.key});

  @override
  State<GoalSavePage> createState() => _GoalSavePageState();
}

class _GoalSavePageState extends State<GoalSavePage> {
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Column(
        children: [
          GoalSavePageAppBar(),
          ChooseInvestmentType()
          // InvestmentAmountSliderSection(),
          // AddGoalSection(),
          // ChooseInvestmentType(),
          // ProceedButton(),
        ],
      ),
    );
  }
}
