import 'package:flutter/material.dart';
import 'package:jusudev/ui/components/project_container.dart';

class ProjectGridWeb extends StatefulWidget {
  static List projectList = [
    ProjectContainer(
      isBig: true,
      title: "Moi Mobiili",
      technologies: [
        "Flutter",
        "Flutter web",
      ],
      assetImage: AssetImage('assets/moi_screenshot.png'),
    ),
    ProjectContainer(
      title: "Zepyr",
      isBig: false,
      technologies: ["Python"],
      description: "Discord bot made to fetch live match data",
      assetImage: AssetImage('assets/zepyr_screenshot.png'),
    ),
    ProjectContainer(
      title: "AC Oulu",
      isBig: false,
      technologies: ["Flutter", "Firestore"],
      assetImage: AssetImage('assets/placeholder.png'),
      boxFit: BoxFit.fill,
    ),
    ProjectContainer(
        isBig: true,
        title: "jusu.dev",
        technologies: ["Flutter web"],
        assetImage: AssetImage('assets/placeholder.png'),
        boxFit: BoxFit.cover)
  ];

  final GlobalKey key;
  final bool isHovered;

  const ProjectGridWeb({this.key, this.isHovered});

  @override
  _ProjectGridWebState createState() => _ProjectGridWebState();
}

class _ProjectGridWebState extends State<ProjectGridWeb> {
  @override
  Widget build(BuildContext context) {
    return _projectGridWeb();
  }

  Widget _projectGridWeb() {
    return Center(
      child: Column(
        children: [
          Wrap(
            runSpacing: 36,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ProjectGridWeb.projectList[0],
              SizedBox(
                width: 36,
              ),
              ProjectGridWeb.projectList[1],
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
              ProjectGridWeb.projectList[2],
              SizedBox(
                width: 36,
              ),
              ProjectGridWeb.projectList[3],
            ],
          ),
        ],
      ),
    );
  }
}
