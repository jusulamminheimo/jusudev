import 'package:flutter/foundation.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

class NetworkUtils {
  static void openUrl(String url) async {
    if (kIsWeb) {
      html.window.open(url, "new tab");
    }

    if (await canLaunch(url)) {
      await launch(url);
    }

    throw Exception("Can't open");
  }
}
