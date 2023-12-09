import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/colors.dart';

class SelectableChipWidget extends StatelessWidget {
  final String title;
  final EdgeInsets? margin;
  final bool isSelected;
  final Function() onClick;
  final Size? size;

  const SelectableChipWidget(
      {super.key,
      required this.title,
      this.margin,
      required this.isSelected,
      required this.onClick, this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: () {
          onClick.call();
        },
        child: Container(
          height: size?.height ?? 32,
          width: size?.width,
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
          decoration: BoxDecoration(
            color: isSelected ? CustomColors.darkGreen : null,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.white24),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isSelected)...[
                const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 16,
                ),
                const SizedBox(width: 4)
              ],
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}
