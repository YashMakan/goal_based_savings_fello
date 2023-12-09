import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final bool top;
  final Widget? floatingActionButton;

  const BackgroundWidget(
      {super.key,
      required this.child,
      this.padding,
      this.top = true,
      this.floatingActionButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: floatingActionButton,
      body: SafeArea(
        top: top,
        child: Padding(
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: child,
        ),
      ),
    );
  }
}
