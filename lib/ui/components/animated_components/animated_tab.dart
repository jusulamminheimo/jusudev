import 'package:flutter/material.dart';

class AnimatedTab extends StatefulWidget {
  final String title;
  final VoidCallback onTap;

  const AnimatedTab({Key key, this.title, this.onTap}) : super(key: key);

  @override
  _AnimatedTabState createState() => _AnimatedTabState();
}

class _AnimatedTabState extends State<AnimatedTab> {
  bool isHovered = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: InkWell(
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: widget.onTap ?? null,
        child: Container(
          width: 100,
          margin: EdgeInsets.all(8),
          child: Text(widget.title,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w400,
                decoration: isHovered ? TextDecoration.underline : null,
              )),
        ),
      ),
    );
  }
}
