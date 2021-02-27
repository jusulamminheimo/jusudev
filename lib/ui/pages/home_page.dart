import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jusudev/ui/components/animated_tab.dart';
import 'package:jusudev/ui/components/info_container.dart';
import 'package:jusudev/ui/components/project_grid.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final projectsKey = GlobalKey();
  final meKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Row(
            children: [
              AnimatedTab(
                  title: "projects",
                  onTap: () => Scrollable.ensureVisible(
                      projectsKey.currentContext,
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOut,
                      alignment: .5)),
              SizedBox(
                width: 36,
              ),
              AnimatedTab(
                  title: "me",
                  onTap: () => Scrollable.ensureVisible(
                        meKey.currentContext,
                        duration: Duration(milliseconds: 800),
                        curve: Curves.easeInOut,
                      )),
              SizedBox(
                width: 36,
              ),
            ],
          )
        ],
        title: Text(
          'jusu.dev',
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
        ),
      ),
      backgroundColor: Color(0XFFCCCDC8),
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
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 800),
                        child: Text(
                            "Let's not waste time. Here is everything public I've done.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 84,
                                fontWeight: FontWeight.w700)),
                      ),
                      GestureDetector(
                        onTap: () => Scrollable.ensureVisible(
                            projectsKey.currentContext,
                            duration: Duration(milliseconds: 800),
                            curve: Curves.easeInOut,
                            alignment: .5),
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Icon(
                            Icons.arrow_downward_sharp,
                            size: 72,
                            color: Colors.purple,
                          ),
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
            Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.74,
                ),
                ProjectGrid(
                  key: projectsKey,
                ),
                InfoContainer(
                  key: meKey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
