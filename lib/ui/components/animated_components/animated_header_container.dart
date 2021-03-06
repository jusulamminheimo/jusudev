import 'package:flutter/material.dart';
import 'package:jusudev/ui/components/responsive_builder.dart';
import 'package:jusudev/ui/components/animated_components/animated_arrow.dart';
import 'package:jusudev/utils/strings.dart';

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
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset(0.75, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInCubic,
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
            Text(Strings.topHeaderText,
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 1.12,
                    color: Colors.black,
                    fontSize: isPhone(context) ? 48 : 84,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 16,
            ),
            AnimatedCustomArrow(),
          ],
        ),
      ),
    );
  }
}
