import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/domain/entities/goal_entity.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/chip_widget.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/custom_textfield.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/selectable_chip_widget.dart';

class AddGoalSection extends StatefulWidget {
  const AddGoalSection({super.key});

  @override
  State<AddGoalSection> createState() => _AddGoalSectionState();
}

class _AddGoalSectionState extends State<AddGoalSection> {
  final List<GoalEntity> goals = [
    GoalEntity("", "Vacation"),
    GoalEntity("", "Education"),
    GoalEntity("", "Buy car"),
    GoalEntity("", "Medical"),
    GoalEntity("", "Rainy day"),
    GoalEntity("", "Gift"),
  ];
  int? selectedIndex;

  bool get isOtherGoalSelected => selectedIndex == goals.length;

  bool get isAnyGoalSelected => selectedIndex != null;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        const Text('What would you like to save for?'),
        GridView(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 4),
          children: List.generate(
              goals.length,
              (index) => SelectableChipWidget(
                    onClick: () {
                      selectedIndex = index;
                      setState(() {});
                    },
                    isSelected: selectedIndex == index,
                    title: goals[index].title,
                  )),
        ),
        const SizedBox(height: 8),
        SelectableChipWidget(
          onClick: () {
            selectedIndex = goals.length;
            setState(() {});
          },
          size: const Size.fromHeight(46),
          isSelected: isOtherGoalSelected,
          title: "Enter your own goal",
        ),
        const SizedBox(height: 16),
        CustomTextField(
            title: "Goal Name",
            enabled: isAnyGoalSelected,
            asset: selectedIndex != null ? goals[selectedIndex!].asset : null),
        CustomTextField(
          title: "Goal Date",
          enabled: isAnyGoalSelected,
        ),
        CustomTextField(
          title: "Goal Amount",
          enabled: isAnyGoalSelected,
        ),
        if (isOtherGoalSelected)
          CustomTextField(
            title: "Custom goal",
            enabled: isOtherGoalSelected,
          ),
      ],
    );
  }
}
