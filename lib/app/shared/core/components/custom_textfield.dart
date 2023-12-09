import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final bool enabled;
  final String? asset;

  const CustomTextField(
      {super.key, required this.title, required this.enabled, this.asset});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          label: Text(title)
        ),
      ),
    );
  }
}
