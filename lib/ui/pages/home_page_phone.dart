import 'package:flutter/material.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
                Container(
                  decoration: BoxDecoration(color: Color(0XFFCCCDC8)),
                  width: screenWidth,
                  height: screenHeight * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "Let's not waste time. Here is everything public I've done.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 84,
                              fontWeight: FontWeight.w700)),
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
                Container(
                  color: Color(0XFF0F1319),
                  width: screenWidth,
                  height: screenHeight,
                )
              ],
            )),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.75),
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
