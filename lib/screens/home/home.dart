import 'package:beauty_app/constants/colors.dart';
import 'package:beauty_app/screens/home/body.dart';
import 'package:beauty_app/widgets/bottom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(20)),
        child: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/maps.svg',
            height: 25,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: BottomTabBar(size: size),
      body: BodyHome(),
    );
  }
}
