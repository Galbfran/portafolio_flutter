import 'package:flutter/material.dart';
import 'package:portafolio/widgets/text.dart';

class PageContact extends StatelessWidget {
  const PageContact({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    const String title = "contacto";
    const String description = "francogalbiati984@gmail.com";
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
