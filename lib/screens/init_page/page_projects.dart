import 'package:flutter/material.dart';
import 'package:portafolio/constant/colors.dart';
import 'package:portafolio/widgets/text.dart';

class PageProyect extends StatelessWidget {
  const PageProyect({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextPortafolio(
              text: "Proyectos",
              size: 35,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
            TextPortafolio(
              text: "Galbiati Franco",
              size: 20,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
