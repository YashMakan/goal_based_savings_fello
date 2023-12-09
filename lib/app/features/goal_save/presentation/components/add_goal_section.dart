import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/models/investment_details.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/domain/entities/goal_entity.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/enums.dart';
import 'package:goal_based_savings_fello/app/shared/config/theme/text_theme.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/chip_widget.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/custom_textfield.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/selectable_chip_widget.dart';

class AddGoalSection extends StatefulWidget {
  final Investment? selectedInvestment;
  final InvestmentDetails? details;

  const AddGoalSection({super.key, this.selectedInvestment, this.details});

  @override
  State<AddGoalSection> createState() => _AddGoalSectionState();
}

class _AddGoalSectionState extends State<AddGoalSection> {
  final List<GoalEntity> goals = [
    GoalEntity("", "Vacation"), // todo: need to add asset but not enough time
    GoalEntity("", "Education"),
    GoalEntity("", "Buy car"),
    GoalEntity("", "Medical"),
    GoalEntity("", "Rainy day"),
    GoalEntity("", "Gift"),
    GoalEntity("", "Enter your own goal")
  ];
  int? selectedIndex;

  bool get isOtherGoalSelected => selectedIndex == goals.length - 1;

  bool get isAnyGoalSelected => selectedIndex != null;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 2,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.transparent,
                      Colors.white,
                    ])),
              ),
            ),
            const ChipWidget(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Text('Add Goal'),
            ),
            Expanded(
              child: Container(
                height: 2,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.white,
                      Colors.transparent,
                    ])),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          'What would you like to save for?',
          style: context.titleLarge,
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: List.generate(
              goals.length,
                  (index) =>
                  SelectableChipWidget(
                    onClick: () {
                      selectedIndex = index;
                      widget.details?.goalType = goals[index].title;
                      setState(() {});
                    },
                    isSelected: selectedIndex == index,
                    title: goals[index].title,
                  )),
        ),
        const SizedBox(height: 16),
        CustomTextField(
            title: "Goal Name",
            enabled: isAnyGoalSelected,
            onChanged: (text) {
              widget.details?.name = text;
            },
            asset: selectedIndex != null ? goals[selectedIndex!].asset : null),
        CustomTextField(
          title: "Goal Date",
          enabled: isAnyGoalSelected,
          onChanged: (text) {
            widget.details?.date = text;
          },
        ),
        CustomTextField(
          title: "Goal Amount",
          textInputType: TextInputType.number,
          enabled: isAnyGoalSelected,
          onChanged: (text) {
            widget.details?.amount = double.tryParse(text) ?? 0;
          },
        ),
        if (isOtherGoalSelected)
          CustomTextField(
            title: "Custom goal",
            onChanged: (text) {
              widget.details?.goalType = text;
            },
            enabled: isOtherGoalSelected,
          ),
      ],
    );
  }
}
