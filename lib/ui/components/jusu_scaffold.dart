import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jusudev/ui/components/animated_components/animated_tab.dart';
import 'package:jusudev/ui/components/responsive_builder.dart';
import 'package:jusudev/ui/pages/home_page_web.dart';
import 'package:jusudev/utils/strings.dart';

class JusuScaffold extends StatelessWidget {
  final Widget body;

  const JusuScaffold({Key key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0F1319),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          if (isPhone(context))
            Row(
              children: [
                AnimatedTab(
                    title: Strings.projects,
                    onTap: () => Scrollable.ensureVisible(
                        HomePageWeb.projectsKey.currentContext,
                        duration: Duration(milliseconds: 800),
                        curve: Curves.easeInOut,
                        alignment: .5)),
                SizedBox(
                  width: 36,
                ),
                AnimatedTab(
                    title: Strings.me,
                    onTap: () => Scrollable.ensureVisible(
                          HomePageWeb.meKey.currentContext,
                          duration: Duration(milliseconds: 800),
                          curve: Curves.easeInOut,
                        )),
                SizedBox(
                  width: 36,
                ),
              ],
            )
        ],
        title: GestureDetector(
          onTap: () {
            Scrollable.ensureVisible(HomePageWeb.topKey.currentContext,
                duration: Duration(milliseconds: 800), curve: Curves.easeInOut);
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              Strings.jusudev,
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
      body: body,
    );
  }
}
