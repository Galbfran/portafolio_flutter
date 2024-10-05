import 'package:flutter/material.dart';
import 'package:portafolio/widgets/text.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    const String title =
        "tranformo ideas en experiencias visuales cautivadores,\nfusionando creatividad y precicion para dar vida\na proyectos unicos e impactantes";
    const String description = "Descubrelo en mi portafolio";
    return GestureDetector(
      onTap: () => controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      ),
      child: Container(
        decoration: BoxDecoration(color: Colors.amber[100]),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextPortafolio(
              text: title,
              size: 35,
              fontWeight: FontWeight.w900,
              maxLines: 3,
              textAlign: TextAlign.center,
            ),
            TextPortafolio(
              text: description,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
