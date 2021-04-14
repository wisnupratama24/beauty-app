import 'package:beauty_app/constants/colors.dart';
import 'package:beauty_app/models/salon.dart';
import 'package:beauty_app/screens/detail/card_image.dart';
import 'package:beauty_app/screens/detail/card_image_desc.dart';
import 'package:beauty_app/screens/detail/tab_bar.dart';
import 'package:beauty_app/screens/detail/tab_services.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  TabController _tabController;

  Salon detailSalon = Salon(
      name: 'Cute Cut - Hair Salon',
      rating: 4.7,
      distance: '1.6 Km',
      image: ['1.jpg', '3.jpg'],
      address: 'Wolla Warsaw');

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeHeader = size.height * 0.3;
    return Scaffold(
      body: Container(
        height: size.height,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                color: kPrimaryColor,
                width: size.width,
                height: sizeHeader,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TabBarDetail(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, top: 20),
                child: Column(
                  children: [
                    CardImage(
                        size: size,
                        sizeHeader: sizeHeader,
                        detailSalon: detailSalon),
                    CardImageDesc(size: size, detailSalon: detailSalon),
                    TabBarService(),
                  ],
                ),
              )
              // SafeArea(
              //   child: Container(
              //     margin: EdgeInsets.only(left: 25),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         CardImage(
              //             size: size,
              //             sizeHeader: sizeHeader,
              //             detailSalon: detailSalon),
              //         CardImageDesc(size: size, detailSalon: detailSalon),
              //         TabBarService(),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
