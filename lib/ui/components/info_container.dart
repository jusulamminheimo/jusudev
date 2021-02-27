import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

class InfoContainer extends StatelessWidget {
  const InfoContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 180, left: 100, right: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(child: Image.asset('assets/cvkuva.png')),
          SizedBox(
            width: 36,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '/whois jusu',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 36),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Passionate mobile developer, who is on a mission to bring value for end users.\nRight now very interested in Flutter, and anything related to it.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              Row(children: [
                Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 8,
                ),
                SelectableText(
                  ' jusulamminheimo@gmail.com ',
                  style:
                      TextStyle(color: Colors.white, fontSize: 16, height: 1.1),
                )
              ]),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () => html.window.open(
                        "https://www.linkedin.com/in/jussi-tapio-lamminheimo-95468b182/",
                        "new tab"),
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  IconButton(
                    onPressed: () => html.window
                        .open("https://twitter.com/jusulamminheimo", "new tab"),
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  IconButton(
                      onPressed: () => html.window.open(
                          "https://github.com/jusulamminheimo", "new tab"),
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
