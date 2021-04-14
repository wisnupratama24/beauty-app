import 'package:beauty_app/widgets/card_desc.dart';
import 'package:flutter/material.dart';

class CardDetail extends StatelessWidget {
  final String image;
  final String distance;
  final double rating;
  final String name;
  final Function press;
  final bool isLabel;

  const CardDetail({
    Key key,
    @required this.size,
    this.image,
    this.name,
    this.distance,
    this.rating,
    this.press,
    this.isLabel,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            height: size.height * 0.2,
            width: size.width * 0.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/$image"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
          ),
          isLabel
              ? CardDesc(name: name, distance: distance, rating: rating)
              : SizedBox(
                  height: 0,
                )
        ],
      ),
    );
  }
}
