import 'package:flutter/material.dart';
import 'package:jusudev/ui/components/responsive_builder.dart';
import 'package:jusudev/ui/pages/home_page_phone.dart';
import 'package:jusudev/ui/pages/home_page_web.dart';

class HomePageWrapper extends StatefulWidget {
  @override
  _HomePageWrapperState createState() => _HomePageWrapperState();
}

class _HomePageWrapperState extends State<HomePageWrapper> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      phone: () => HomePagePhone(),
      web: () => HomePageWeb(),
    );
  }
}
