import 'package:beauty_app/constants/colors.dart';
import 'package:beauty_app/models/salon.dart';
import 'package:flutter/material.dart';

class CardImageDesc extends StatelessWidget {
  const CardImageDesc({
    Key key,
    @required this.size,
    @required this.detailSalon,
  }) : super(key: key);

  final Size size;
  final Salon detailSalon;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: size.height * 0.14,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    detailSalon.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '${detailSalon.address} - ${detailSalon.distance}',
                    style: TextStyle(
                        letterSpacing: 0.8,
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.grey[800].withOpacity(0.7)),
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
                        '${detailSalon.rating}/5',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.2),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey[300]),
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.call),
                  label: Text('Call')),
            )
          ],
        ));
  }
}
