import 'package:beauty_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CardDesc extends StatelessWidget {
  const CardDesc({
    Key key,
    @required this.name,
    @required this.distance,
    @required this.rating,
  }) : super(key: key);

  final String name;
  final String distance;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            '$distance away',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 11,
                color: Colors.grey[600]),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: kStarColor,
                size: 18,
              ),
              SizedBox(width: 5),
              Text(
                '$rating/5',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.2),
              )
            ],
          )
        ],
      ),
    );
  }
}
