import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final bool enabled;
  final String? asset;
  final TextInputType? textInputType;

  const CustomTextField(
      {super.key,
      required this.title,
      required this.enabled,
      this.asset,
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: TextField(
        keyboardType: textInputType,
        style: const TextStyle(color: Colors.black),
        decoration:
            InputDecoration(border: InputBorder.none, label: Text(title)),
      ),
    );
  }
}
