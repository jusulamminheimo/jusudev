import 'package:flutter/material.dart';

class AnimatedHeaderContainer extends StatefulWidget {
  @override
  _AnimatedHeaderContainerState createState() =>
      _AnimatedHeaderContainerState();
}

class _AnimatedHeaderContainerState extends State<AnimatedHeaderContainer>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset(0.75, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ));
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1000),
      child: SlideTransition(
        position: _offsetAnimation,
        child: Column(
          children: [
            Text("Let's not waste time.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 84,
                    fontWeight: FontWeight.w700)),
            Text("Here is everything public I've done.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 84,
                    fontWeight: FontWeight.w700)),
          ],
        ),
      ),
    );
  }
}
