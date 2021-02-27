import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function() phone;
  final Widget Function() web;

  const ResponsiveBuilder({Key key, this.phone, this.web}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final platform = MediaQuery.of(context).getPlatform;

    if (platform == Platform.web) {
      return web();
    }

    return phone();
  }
}

enum Platform { phone, web }

extension PlatformType on MediaQueryData {
  Platform get getPlatform {
    if (size.width >= 1000) {
      return Platform.web;
    }
    return Platform.phone;
  }
}

bool isPhone(BuildContext context) {
  return MediaQuery.of(context).getPlatform == Platform.phone;
}
