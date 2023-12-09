import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final bool enabled;
  final String? asset;
  final TextInputType? textInputType;
  final Function(String)? onChanged;

  const CustomTextField(
      {super.key,
      required this.title,
      required this.enabled,
      this.asset,
      this.textInputType,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: TextField(
        keyboardType: textInputType,
        onChanged: onChanged,
        style: const TextStyle(color: Colors.black),
        decoration:
            InputDecoration(border: InputBorder.none, label: Text(title)),
      ),
    );
  }
}
