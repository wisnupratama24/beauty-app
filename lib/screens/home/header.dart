import 'package:beauty_app/constants/colors.dart';
import 'package:beauty_app/widgets/home/search_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.30,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25.0),
          )),
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(30.0, 35.0, 30.0, 15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _labelName('Daria'),
                  _settingProfile(),
                ],
              ),
              SearchForm(size: size),
            ],
          ),
        ),
      ),
    );
  }

  _settingProfile() {
    return Container(
      child: Row(
        children: [
          IconButton(
              icon: SvgPicture.asset(
                'assets/icons/setting-lines.svg',
                height: 20,
                color: Colors.grey[300],
              ),
              onPressed: () {}),
          Container(
            width: 35,
            height: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/ava.png'),
                    fit: BoxFit.fill)),
          ),
        ],
      ),
    );
  }

  _labelName(String name) {
    return RichText(
      text: TextSpan(
        text: 'Hello ',
        style: TextStyle(fontSize: 30, color: Colors.white.withOpacity(0.8)),
        children: [
          TextSpan(
              text: "$name.",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white.withOpacity(1))),
        ],
      ),
    );
  }
}
