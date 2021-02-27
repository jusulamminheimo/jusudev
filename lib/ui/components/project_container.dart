import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProjectContainer extends StatefulWidget {
  final bool isBig;
  final String title;
  final String description;
  final List<String> technologies;

  const ProjectContainer(
      {Key key,
      @required this.isBig,
      @required this.title,
      this.description,
      this.technologies})
      : super(key: key);

  @override
  _ProjectContainerState createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer> {
  bool isHovered = false;

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
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.all(24),
        width: widget.isBig ? 500 : 300,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16),
          border: isHovered ? Border.all(color: Colors.white, width: 3) : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.technologies != null && widget.technologies.isNotEmpty)
              Row(
                children: [
                  for (var t in widget.technologies)
                    TechnologyContainer(title: t),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.add,
                        size: 28,
                        color: Colors.purple,
                      ),
                    ),
                  )
                ],
              ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
                if (widget.description != null)
                  Text(
                    widget.description,
                    style: TextStyle(color: Colors.grey),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TechnologyContainer extends StatelessWidget {
  final String title;
  final bool isWhite;

  const TechnologyContainer(
      {Key key, @required this.title, this.isWhite = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.only(left: 14, right: 14),
      decoration: BoxDecoration(
          border: Border.all(
              color: isWhite ? Colors.white : Colors.black, width: 1),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
          child: Text(
        title.toUpperCase(),
        style: TextStyle(
            color: isWhite ? Colors.white : Colors.black,
            fontWeight: FontWeight.w400),
      )),
    );
  }
}
