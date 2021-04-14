import 'package:beauty_app/constants/route.dart';
import 'package:beauty_app/models/salon.dart';
import 'package:beauty_app/screens/home/header.dart';
import 'package:beauty_app/widgets/home/card_detail.dart';
import 'package:beauty_app/widgets/card_label.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BodyHome extends StatefulWidget {
  List<Salon> salonList = [
    Salon(
        name: 'Cute Cut - Hair Salon',
        rating: 4.7,
        distance: '1.6 Km',
        image: '1.jpg'),
    Salon(
        name: 'Eli - Spa Salon',
        rating: 4.5,
        distance: '3.6 Km',
        image: '2.jpg'),
  ];

  List<Salon> nailList = [
    Salon(
        name: 'Cute Cut - Hair Salon',
        rating: 4.7,
        distance: '1.6 Km',
        image: '3.jpg'),
    Salon(
        name: 'Eli - Spa Salon',
        rating: 4.5,
        distance: '3.6 Km',
        image: '4.jpg'),
  ];

  @override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeaderHome(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                children: [
                  CardLabel(
                    lightText: 'Popular in ',
                    boldText: 'Warsaw',
                  ),
                  Container(
                    height: size.height * 0.35,
                    margin: EdgeInsets.only(top: 20),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.salonList.length,
                        itemBuilder: (context, index) {
                          return CardDetail(
                            size: size,
                            name: widget.salonList[index].name,
                            image: widget.salonList[index].image,
                            distance: widget.salonList[index].distance,
                            rating: widget.salonList[index].rating,
                            isLabel: true,
                            press: () {
                              Navigator.pushNamed(context, DETAIL_ROUTE);
                            },
                          );
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CardLabel(
                    lightText: 'Nails ',
                    boldText: 'Top Services',
                  ),
                  Container(
                    height: size.height * 0.32,
                    margin: EdgeInsets.only(top: 20),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.nailList.length,
                        itemBuilder: (context, index) {
                          return CardDetail(
                            size: size,
                            name: widget.nailList[index].name,
                            image: widget.nailList[index].image,
                            distance: widget.nailList[index].distance,
                            rating: widget.nailList[index].rating,
                            isLabel: true,
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
