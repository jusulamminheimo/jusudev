import 'package:flutter/material.dart';
import 'package:jusudev/ui/components/project_container.dart';

class ProjectGridWeb extends StatefulWidget {
  final GlobalKey key;
  final bool isHovered;

  const ProjectGridWeb({this.key, this.isHovered});

  @override
  _ProjectGridWebState createState() => _ProjectGridWebState();
}

class _ProjectGridWebState extends State<ProjectGridWeb> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Wrap(
            runSpacing: 36,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ProjectContainer(
                isBig: true,
                title: "Moi Mobiili",
                technologies: [
                  "Flutter",
                  "Flutter web",
                ],
                assetImage: AssetImage('assets/moi_screenshot.png'),
              ),
              SizedBox(
                width: 36,
              ),
              ProjectContainer(
                title: "Zephyr",
                isBig: false,
                technologies: ["Python"],
                description: "Discord bot made to fetch live match data",
                assetImage: AssetImage('assets/acoulu_screenshot.png'),
                boxFit: BoxFit.cover,
              )
            ],
          ),
          SizedBox(
            height: 36,
          ),
          Wrap(
            runSpacing: 36,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ProjectContainer(
                title: "AC Oulu",
                isBig: false,
                technologies: ["Flutter", "Firestore"],
                assetImage: AssetImage('assets/acoulu_screenshot.png'),
              ),
              SizedBox(
                width: 36,
              ),
              ProjectContainer(
                  isBig: true,
                  title: "jusu.dev",
                  technologies: ["Flutter web"],
                  assetImage: AssetImage('assets/acoulu_screenshot.png'),
                  boxFit: BoxFit.fill)
            ],
          ),
        ],
      ),
    );
  }
}
