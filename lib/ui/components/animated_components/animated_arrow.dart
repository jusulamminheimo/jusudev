import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jusudev/ui/pages/home_page_web.dart';

class AnimatedCustomArrow extends StatefulWidget {
  @override
  _AnimatedCustomArrowState createState() => _AnimatedCustomArrowState();
}

class _AnimatedCustomArrowState extends State<AnimatedCustomArrow>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.0, 0.4),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: GestureDetector(
        onTap: () => Scrollable.ensureVisible(
            HomePageWeb.projectsKey.currentContext,
            duration: Duration(milliseconds: 800),
            curve: Curves.easeInOut,
            alignment: .5),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Icon(
            Icons.keyboard_arrow_down,
            size: 72,
            color: Color(0XFFD92588),
          ),
        ),
      ),
    );
  }
}
