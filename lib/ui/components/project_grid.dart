import 'package:flutter/material.dart';
import 'package:jusudev/ui/components/project_container.dart';
import 'package:jusudev/ui/components/responsive_builder.dart';
import 'package:jusudev/ui/components/info_container.dart';
import 'package:jusudev/ui/pages/home_page_web.dart';

class ProjectGrid extends StatefulWidget {
  static List projectList = [
    ProjectContainer(
      isBig: true,
      title: "Moi Mobiili",
      technologies: [
        "Flutter",
        "Flutter web",
      ],
      assetImage: AssetImage('assets/moi_screenshot_mockup.jpg'),
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
      assetImage: AssetImage('assets/acoulu_screenshot.jpg'),
    ),
    ProjectContainer(
        isBig: true,
        title: "jusu.dev",
        technologies: ["Flutter web"],
        assetImage: AssetImage('assets/jusudev_screenshot.jpg'),
        boxFit: BoxFit.cover)
  ];

  final GlobalKey key;
  final bool isHovered;

  const ProjectGrid({this.key, this.isHovered});

  @override
  _ProjectGridState createState() => _ProjectGridState();
}

class _ProjectGridState extends State<ProjectGrid> {
  @override
  Widget build(BuildContext context) {
    return isPhone(context) ? _projectGridPhone() : _projectGridWeb();
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
              ProjectGrid.projectList[0],
              SizedBox(
                width: 36,
              ),
              ProjectGrid.projectList[1],
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
              ProjectGrid.projectList[2],
              SizedBox(
                width: 36,
              ),
              ProjectGrid.projectList[3],
            ],
          ),
        ],
      ),
    );
  }

  Widget _projectGridPhone() {
    return Center(
      child: Column(
        children: [
          ProjectGrid.projectList[0],
          SizedBox(
            height: 32,
          ),
          ProjectGrid.projectList[1],
          SizedBox(
            height: 32,
          ),
          ProjectGrid.projectList[2],
          SizedBox(
            height: 32,
          ),
          ProjectGrid.projectList[3],
          SizedBox(
            height: 32,
          ),
          InfoContainer(key: HomePageWeb.meKey)
        ],
      ),
    );
  }
}
