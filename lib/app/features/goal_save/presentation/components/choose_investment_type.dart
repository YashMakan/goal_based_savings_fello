import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/colors.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/enums.dart';
import 'package:goal_based_savings_fello/app/shared/config/theme/text_theme.dart';
import 'package:goal_based_savings_fello/app/shared/core/components/chip_widget.dart';

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
              child: Text('Choose Asset'),
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
          'Choose Investment type',
          style: context.titleLarge,
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Row(
            children: [
              // todo: should have made single widget for this but no time
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    onTileClicked?.call(
                        selectedInvestment == Investment.digitalGold
                            ? null
                            : Investment.digitalGold);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        color: isGoldSelected
                            ? CustomColors.yellow.withOpacity(0.2)
                            : CustomColors.yellow.withOpacity(0.05),
                        border: Border.all(color: Colors.white24),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Checkbox(
                            value: isGoldSelected,
                            onChanged: (value) {
                              onTileClicked?.call((value ?? false)
                                  ? Investment.digitalGold
                                  : null);
                            },
                            checkColor: Colors.black38,
                            activeColor: CustomColors.yellow,
                          ),
                        ),
                        Text(
                          'Automated backend',
                          style:
                              context.bodySmall?.copyWith(color: Colors.white),
                        ),
                        Text(
                          'Digital Gold',
                          style: context.bodyLarge?.copyWith(
                              color: CustomColors.yellow,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '99.9% Pure',
                          style:
                              context.bodySmall?.copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 16)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    onTileClicked?.call(
                        selectedInvestment == Investment.felloFlo
                            ? null
                            : Investment.felloFlo);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
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
                        Align(
                          alignment: Alignment.centerRight,
                          child: Checkbox(
                            value: isFelloFloSelected,
                            onChanged: (value) {
                              onTileClicked?.call(
                                  (value ?? false) ? Investment.felloFlo : null);
                            },
                            checkColor: Colors.black38,
                            activeColor: CustomColors.primary,
                          ),
                        ),
                        Text(
                          'Lendbox backend',
                          style:
                          context.bodySmall?.copyWith(color: Colors.white),
                        ),
                        Text(
                          'FelloFlo',
                          style: context.bodyLarge?.copyWith(
                              color: CustomColors.primary,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '12% P2P',
                          style:
                          context.bodySmall?.copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 16)
                      ],
                    ),
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
