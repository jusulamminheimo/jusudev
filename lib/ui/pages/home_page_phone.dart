import 'package:flutter/material.dart';
import 'package:jusudev/ui/components/animated_components/animated_header_container.dart';
import 'package:jusudev/ui/components/jusu_scaffold.dart';
import 'package:jusudev/ui/components/project_grid.dart';
import 'package:jusudev/ui/pages/home_page_web.dart';

class HomePagePhone extends StatefulWidget {
  @override
  _HomePagePhoneState createState() => _HomePagePhoneState();
}

class _HomePagePhoneState extends State<HomePagePhone> {
  @override
  Widget build(BuildContext context) {
    return JusuScaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            (Column(
              key: HomePageWeb.topKey,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 900),
                  child: Container(
                    decoration: BoxDecoration(color: Color(0XFFCCCDC8)),
                    width: double.infinity,
                    child: Center(child: AnimatedHeaderContainer()),
                  ),
                ),
                Container(
                  color: Color(0XFF0F1319),
                )
              ],
            )),
            Padding(
              key: HomePageWeb.projectsKey,
              padding: EdgeInsets.only(top: 850),
              child: Center(
                child: ProjectGrid(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
