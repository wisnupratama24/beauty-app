import 'package:beauty_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:beauty_app/constants/route.dart';

class TabBarDetail extends StatelessWidget {
  const TabBarDetail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSize = 18;
    Color iconColor = Colors.white.withOpacity(0.7);
    var size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: FlatButton.icon(
        icon: Icon(
          Icons.arrow_back,
          size: 20,
          color: iconColor,
        ),
        onPressed: () {
          Navigator.pop(context, HOME_ROUTE);
        },
        label: Container(
          margin: EdgeInsets.only(left: 10),
          child: Text(
            'Back',
            style: TextStyle(color: iconColor, fontSize: 16),
          ),
        ),
      ),
      leadingWidth: size.width * 0.3,
      actions: [
        IconButton(
            icon: SvgPicture.asset(
              'assets/icons/share.svg',
              height: iconSize,
            ),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset(
              'assets/icons/heart.svg',
              color: iconColor,
              height: iconSize,
            ),
            onPressed: () {})
      ],
    );
  }
}
