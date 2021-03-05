import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jusudev/ui/components/animated_components/animated_header_container.dart';
import 'package:jusudev/ui/components/info_container.dart';
import 'package:jusudev/ui/components/jusu_scaffold.dart';
import 'package:jusudev/ui/components/project_grid.dart';
import 'package:jusudev/ui/components/animated_components/animated_arrow.dart';

class HomePageWeb extends StatefulWidget {
  static final projectsKey = GlobalKey();
  static final meKey = GlobalKey();
  static final topKey = GlobalKey();

  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
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
            Column(
              children: [
                SizedBox(
                  height: 850,
                ),
                ProjectGridWeb(
                  key: HomePageWeb.projectsKey,
                ),
                Center(
                  child: InfoContainer(
                    key: HomePageWeb.meKey,
                  ),
                ),
                SizedBox(
                  height: 64,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
