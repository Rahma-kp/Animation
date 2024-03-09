import 'package:flutter/material.dart';

class ScreenTitle extends StatefulWidget {
  final String text;
  const ScreenTitle({super.key, required this.text});

  @override
  State<ScreenTitle> createState() => _ScreenTitleState();
}

class _ScreenTitleState extends State<ScreenTitle> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      duration: const Duration(milliseconds: 500),
      child: Text(
        widget.text,
        style: const TextStyle(
          fontSize: 36,
          color: Colors.red,
        ),
      ),
    );
  }
}