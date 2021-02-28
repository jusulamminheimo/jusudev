import 'package:flutter/material.dart';
import 'package:jusudev/ui/components/animated_header_container.dart';
import 'package:jusudev/ui/components/info_container.dart';
import 'package:jusudev/ui/components/project_container.dart';

class HomePagePhone extends StatefulWidget {
  @override
  _HomePagePhoneState createState() => _HomePagePhoneState();
}

class _HomePagePhoneState extends State<HomePagePhone> {
  final projectsKey = GlobalKey();
  final meKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'jusu.dev',
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
        ),
      ),
      backgroundColor: Color(0XFF0F1319),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            (Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 900),
                  child: Container(
                    decoration: BoxDecoration(color: Color(0XFFCCCDC8)),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedHeaderContainer(),
                        SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () => Scrollable.ensureVisible(
                              projectsKey.currentContext,
                              duration: Duration(milliseconds: 800),
                              curve: Curves.easeInOut,
                              alignment: .5),
                          child: Icon(
                            Icons.arrow_downward_sharp,
                            size: 72,
                            color: Colors.purple,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Color(0XFF0F1319),
                )
              ],
            )),
            Padding(
              key: projectsKey,
              padding: EdgeInsets.only(top: 850),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ProjectContainer(
                      title: 'Moi Mobiili',
                      technologies: ["Flutter", "Flutter web"],
                      description: "Lorem ipsum",
                    ),
                    ProjectContainer(
                      title: 'Zephyr',
                      technologies: ["Flutter"],
                      description: "Discord bot made to fetch live match data",
                    ),
                    ProjectContainer(
                      title: 'AC Oulu',
                      technologies: ["Flutter", "Firestore"],
                      description: "Lorem ipsum",
                    ),
                    ProjectContainer(
                      title: 'jusu.dev',
                      technologies: ["Flutter web"],
                      description: "Lorem ipsum",
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    InfoContainer()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
