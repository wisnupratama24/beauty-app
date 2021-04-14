import 'package:beauty_app/models/salon.dart';
import 'package:beauty_app/widgets/home/card_detail.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    Key key,
    @required this.size,
    @required this.sizeHeader,
    @required this.detailSalon,
  }) : super(key: key);

  final Size size;
  final double sizeHeader;
  final Salon detailSalon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.24,
      margin: EdgeInsets.only(top: sizeHeader - size.height * 0.18),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: detailSalon.image.length,
          itemBuilder: (context, index) {
            return CardDetail(
              size: size,
              image: detailSalon.image[index],
              isLabel: false,
            );
          }),
    );
  }
}
