import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavBar(
            icon: 'search.svg',
            isActive: true,
            text: 'Explore',
          ),
          BottomNavBar(
            icon: 'calendar.svg',
            isActive: false,
            text: 'Calendar',
          ),
          BottomNavBar(
            icon: 'heart.svg',
            isActive: false,
            text: 'Love',
          ),
          BottomNavBar(
            icon: 'collection.svg',
            isActive: false,
            text: 'Collection',
          ),
        ],
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  final String icon;
  final String text;
  final bool isActive;

  const BottomNavBar({
    Key key,
    this.icon,
    this.text,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: isActive ? Colors.black : null,
          borderRadius: BorderRadius.circular(15)),
      child: _buttonIcon(),
    );
  }

  _buttonIcon() {
    if (isActive) {
      return FlatButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/$icon',
          height: 18,
        ),
        label: Text(
          text,
          style: TextStyle(color: Colors.white.withOpacity(0.8)),
        ),
      );
    }
    return IconButton(
        icon: SvgPicture.asset(
          'assets/icons/$icon',
          height: 18,
        ),
        onPressed: () {});
  }
}
