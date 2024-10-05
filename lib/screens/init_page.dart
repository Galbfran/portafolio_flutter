import 'package:flutter/material.dart';
import 'package:portafolio/screens/init_page/page_about_detail.dart';
import 'package:portafolio/screens/init_page/page_about_me.dart';
import 'package:portafolio/screens/init_page/page_experience_study.dart';
import 'package:portafolio/screens/init_page/page_one.dart';
import 'package:portafolio/screens/init_page/page_projects.dart';
import 'package:portafolio/screens/init_page/page_two.dart';
import 'package:portafolio/widgets/scaffold.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return ScaffoldProfolio(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: [
            PageOne(controller: controller),
            PageTwo(controller: controller),
            PageAbout(controller: controller),
            PageAboutDetail(controller: controller),
            PageExperienceStudy(controller: controller),
            PageProyect(controller: controller),
          ],
        ),
      ),
    );
  }
}

class PageItem extends StatelessWidget {
  const PageItem({
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
        color: Colors.red,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Column(
          children: [
            Center(child: Text('Hello World')),
          ],
        ),
      ),
    );
  }
}
