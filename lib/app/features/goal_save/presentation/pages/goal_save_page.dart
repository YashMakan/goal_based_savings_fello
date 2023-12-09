import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/models/investment_details.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/presentation/components/add_goal_section.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/presentation/components/choose_investment_type.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/presentation/components/goal_save_page_app_bar.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/presentation/components/investment_amount_slider_section.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/presentation/components/proceed_button.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/enums.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/background_widget.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/custom_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GoalSavePage extends StatefulWidget {
  const GoalSavePage({super.key});

  @override
  State<GoalSavePage> createState() => _GoalSavePageState();
}

class _GoalSavePageState extends State<GoalSavePage>
    with SingleTickerProviderStateMixin {
  bool get isGoalSelected => false;
  late final TabController controller;
  Investment? selectedInvestment;
  InvestmentDetails details = InvestmentDetails();

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      floatingActionButton: controller.index == 1 && selectedInvestment != null
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ProceedButton(
                  investment: selectedInvestment!, details: details),
            )
          : selectedInvestment != null
              ? SizedBox(
                  height: 42,
                  child: CustomButton(
                    text: 'Continue',
                    size: Size(80.w, 60),
                    onPressed: () {
                      controller.animateTo(1);
                    },
                  ),
                )
              : null,
      child: Column(
        children: [
          GoalSavePageAppBar(investment: selectedInvestment),
          Expanded(
            child: TabBarView(
              controller: controller,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ChooseInvestmentType(
                  onTileClicked: (inv) {
                    if (inv != null) {
                      details.investmentType = inv;
                    }
                    selectedInvestment = inv;
                    setState(() {});
                  },
                  selectedInvestment: selectedInvestment,
                ),
                AddGoalSection(selectedInvestment: selectedInvestment, details: details),
              ],
            ),
          ),
          if (isGoalSelected) const InvestmentAmountSliderSection(),
          const SizedBox()
        ],
      ),
    );
  }
}
