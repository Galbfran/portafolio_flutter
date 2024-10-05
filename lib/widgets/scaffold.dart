import 'package:flutter/material.dart';

class ScaffoldProfolio extends StatelessWidget {
  const ScaffoldProfolio({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}
