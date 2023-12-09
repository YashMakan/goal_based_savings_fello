import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsets? margin;

  const ChipWidget({super.key, required this.child, this.margin, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.white24),
      ),
      child: child,
    );
  }
}
