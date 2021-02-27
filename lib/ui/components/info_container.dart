import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jusudev/ui/components/responsive_builder.dart';
import 'package:jusudev/utils/network_utils.dart';
import 'package:jusudev/utils/strings.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isPhone(context)
        ? _phoneInfoContainer(context)
        : _desktopInfoContainer(context);
  }

  Widget _desktopInfoContainer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 180, left: 100, right: 100),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(child: Image.asset('assets/cvkuva.png')),
            SizedBox(
              width: 36,
            ),
            Center(
              child: Column(
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
                    Strings.description,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    SelectableText(
                      ' jusulamminheimo@gmail.com ',
                      style: TextStyle(
                          color: Colors.white, fontSize: 16, height: 1.1),
                    )
                  ]),
                  SizedBox(
                    height: 8,
                  ),
                  _socialsRow(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _phoneInfoContainer(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(child: Image.asset('assets/cvkuva.png')),
        SizedBox(
          width: 36,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Container(
              child: Text(
                Strings.description,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
            _socialsRow(context),
            SizedBox(
              height: 16,
            ),
          ],
        )
      ],
    );
  }

  Widget _socialsRow(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isPhone(context) ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () => NetworkUtils.openUrl(
              "https://www.linkedin.com/in/jussi-tapio-lamminheimo-95468b182/"),
          icon: FaIcon(
            FontAwesomeIcons.linkedin,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        IconButton(
          onPressed: () =>
              NetworkUtils.openUrl("https://twitter.com/jusulamminheimo"),
          icon: FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        IconButton(
            onPressed: () =>
                NetworkUtils.openUrl("https://github.com/jusulamminheimo"),
            icon: FaIcon(
              FontAwesomeIcons.github,
              color: Colors.white,
            ))
      ],
    );
  }
}
