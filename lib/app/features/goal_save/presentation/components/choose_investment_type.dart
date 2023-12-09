import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/colors.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/enums.dart';

class ChooseInvestmentType extends StatelessWidget {
  final Investment? selectedInvestment;
  final Function(Investment?)? onTileClicked;

  const ChooseInvestmentType(
      {super.key, this.selectedInvestment, this.onTileClicked});

  bool get isGoldSelected => selectedInvestment == Investment.digitalGold;

  bool get isFelloFloSelected => selectedInvestment == Investment.felloFlo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Choose Investment type'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 42.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      color: isFelloFloSelected
                          ? CustomColors.yellow.withOpacity(0.2)
                          : CustomColors.yellow.withOpacity(0.05),
                      border: Border.all(color: Colors.white24),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: isGoldSelected,
                        onChanged: (value) {
                          onTileClicked?.call(
                              (value ?? false) ? Investment.digitalGold : null);
                        },
                        checkColor: Colors.black38,
                        activeColor: CustomColors.yellow,
                      ),
                      Text('Automated backend'),
                      Text('Digital Gold'),
                      Text('99.9% Pure'),
                      SizedBox(height: 16)
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      color: isFelloFloSelected
                          ? CustomColors.darkGreen
                          : CustomColors.darkGreen.withOpacity(0.2),
                      border: Border.all(color: Colors.white24),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: isGoldSelected,
                        onChanged: (value) {
                          onTileClicked?.call(
                              (value ?? false) ? Investment.digitalGold : null);
                        },
                        checkColor: Colors.black38,
                        activeColor: CustomColors.yellow,
                      ),
                      Text('Automated backend'),
                      Text('Digital Gold'),
                      Text('99.9% Pure'),
                      SizedBox(height: 16)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
