import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jusudev/ui/components/responsive_builder.dart';

class ProjectContainer extends StatefulWidget {
  final bool isBig;
  final String title;
  final String description;
  final List<String> technologies;
  final AssetImage assetImage;
  final BoxFit boxFit;

  const ProjectContainer({
    Key key,
    this.isBig = false,
    @required this.title,
    this.description,
    this.technologies,
    @required this.assetImage,
    this.boxFit,
  }) : super(key: key);

  @override
  _ProjectContainerState createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer>
    with TickerProviderStateMixin {
  AnimationController _controller;
  AnimationController _fadeController;
  Animation<Offset> _offsetAnimation;
  Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _fadeController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));

    _offsetAnimation = Tween<Offset>(
      begin: Offset(0.0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic,
    ));

    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeIn,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _fadeController.dispose();
  }

  bool isHovered = false;
  final colorTween = ColorTween(begin: Colors.transparent, end: Colors.black);

  @override
  Widget build(BuildContext context) {
    return _desktopContainer();
  }

  Widget _desktopContainer() {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
          _controller.forward();
          _fadeController.forward();
        });
      },
      onExit: (event) {
        setState(() {
          _controller.reverse();
          _fadeController.reverse();
          isHovered = false;
        });
      },
      cursor: SystemMouseCursors.click,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: isPhone(context)
              ? EdgeInsets.only(left: 32, right: 32, bottom: 16)
              : EdgeInsets.zero,
          width: containerSize(),
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: isHovered
                  ? ColorFilter.mode(Colors.black54, BlendMode.darken)
                  : null,
              image: widget.assetImage,
              fit: widget.boxFit ?? BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: SlideTransition(
                  position: _offsetAnimation,
                  child: FadeTransition(
                    opacity: _opacityAnimation,
                    child: Visibility(
                      visible: isHovered,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 32),
                            ),
                            if (widget.description != null)
                              Text(
                                widget.description,
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.technologies != null &&
                      widget.technologies.isNotEmpty)
                    Spacer(),
                  _peekingContainer()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  double containerSize() {
    if (isPhone(context)) {
      return 600;
    }
    return widget.isBig ? 500 : 300;
  }

  Widget _peekingContainer() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      padding: EdgeInsets.all(16),
      height: isHovered ? 60 : 0,
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var t in widget.technologies) TechnologyContainer(title: t),
        ],
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
      padding: EdgeInsets.only(left: 14, right: 14),
      margin: EdgeInsets.symmetric(horizontal: 8),
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
