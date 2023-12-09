import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/constants.dart';
import 'package:goal_based_savings_fello/app/shared/config/theme/text_theme.dart';

class InvestmentAmountSliderSection extends StatelessWidget {
  const InvestmentAmountSliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.white24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(children: [
              WidgetSpan(
                child: Transform.translate(
                  offset: const Offset(0, -18),
                  child: Text(
                    Constants.currencySymbol,
                    style: context.headlineSmall
                        ?.copyWith(color: Colors.white54, fontSize: 20),
                  ),
                ),
              ),
              TextSpan(
                text: '22',
                style: context.displaySmall?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              WidgetSpan(
                child: Transform.translate(
                  offset: const Offset(0, 10),
                  child: Text(
                    '/month',
                    style: context.bodySmall?.copyWith(color: Colors.white54),
                  ),
                ),
              ),
            ]),
          ),
          Text("By 09/08 you could save ${Constants.currencySymbol}400"),
          const CustomRangeSlider(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
                color: const Color(0xFF155B60),
                borderRadius: BorderRadius.circular(12)),
            child: const Text('SAFE & SECURE'),
          ),
        ],
      ),
    );
  }
}

class CustomRangeSlider extends StatelessWidget {
  const CustomRangeSlider({super.key});

  Color getColor(int index) => index > 35
      ? Colors.redAccent
      : (index > 24 ? Colors.orangeAccent : Colors.greenAccent);

  double getHeight(int index) => index % 5 == 0 ? 20 : 10;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
            41,
            (index) => Container(
                  width: 2,
                  height: getHeight(index),
                  margin: const EdgeInsets.only(right: 4),
                  color: getColor(index),
                )),
      ),
    );
  }
}
