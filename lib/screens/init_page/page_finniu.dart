import 'package:flutter/material.dart';
import 'package:portafolio/widgets/text.dart';

class PageProyectFinniu extends StatelessWidget {
  const PageProyectFinniu({
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
        decoration: BoxDecoration(color: Colors.cyan[100]),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextPortafolio(
              text: "proyecto finniu",
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
