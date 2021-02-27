import 'package:flutter/material.dart';
import 'package:jusudev/ui/components/project_container.dart';

class ProjectGrid extends StatefulWidget {
  final GlobalKey key;

  const ProjectGrid({this.key});

  @override
  _ProjectGridState createState() => _ProjectGridState();
}

class _ProjectGridState extends State<ProjectGrid> {
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
              ),
              SizedBox(
                width: 36,
              ),
              ProjectContainer(
                title: "Zephyr",
                isBig: false,
                technologies: ["Python"],
                description: "Discord bot made to fetch live match data",
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
              ),
              SizedBox(
                width: 36,
              ),
              ProjectContainer(
                isBig: true,
                title: "jusu.dev",
                technologies: ["Flutter web"],
              )
            ],
          ),
        ],
      ),
    );
  }
}
