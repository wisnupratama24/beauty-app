import 'package:beauty_app/constants/colors.dart';
import 'package:beauty_app/models/services.dart';
import 'package:beauty_app/widgets/card_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabBarService extends StatefulWidget {
  @override
  _TabBarServiceState createState() => _TabBarServiceState();
}

class _TabBarServiceState extends State<TabBarService>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _currentIndex = 0;

  List<Services> listServices = [
    Services(
        title: 'Hybird Removal',
        subTitle: 'Menicure 1h',
        price: '12',
        isDics: true),
    Services(
        title: 'Japanesse Menicure',
        subTitle: 'Menicure 1h 30m',
        price: '16',
        isDics: false),
    Services(
        title: 'Pedicure SPA',
        subTitle: 'Pedicure 30m',
        price: '32',
        isDics: true),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var widthTab = size.width / 6;
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
              height: 40,
              child: DefaultTabController(
                length: 4,
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                    color: Colors.black.withOpacity(0.8),
                  ),
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  tabs: [
                    Tab(
                      child: Container(
                          width: widthTab,
                          child: Text(
                            'Detail',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: _currentIndex == 0
                                    ? Colors.grey[300]
                                    : Colors.grey[600]),
                          )),
                    ),
                    Tab(
                      child: Container(
                          width: widthTab,
                          child: Text(
                            'Services',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: _currentIndex == 1
                                    ? Colors.grey[300]
                                    : Colors.grey[500]),
                          )),
                    ),
                    Tab(
                      child: Container(
                          width: widthTab,
                          child: Text(
                            'Detail',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: _currentIndex == 2
                                    ? Colors.grey[300]
                                    : Colors.grey[500]),
                          )),
                    ),
                    Tab(
                      child: Container(
                          width: widthTab,
                          child: Text(
                            'Portfolio',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: _currentIndex == 3
                                    ? Colors.grey[300]
                                    : Colors.grey[500]),
                          )),
                    )
                  ],
                ),
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: size.height * 0.5,
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  child: Text('Details Tab'),
                ),
                Container(
                  child: Column(
                    children: [
                      CardLabel(
                        boldText: 'Services',
                        lightText: 'Top ',
                        moreButton: false,
                      ),
                      Expanded(
                        child: Container(
                          height: size.height * 0.5,
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemCount: listServices.length,
                              itemBuilder: (context, index) {
                                return ItemListTab(
                                  title: listServices[index].title,
                                  subTitle: listServices[index].subTitle,
                                  price: listServices[index].price,
                                  isDisc: listServices[index].isDics,
                                );
                              }),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Text('Reviews Tab'),
                ),
                Container(
                  child: Text('Portfolio Tab'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemListTab extends StatelessWidget {
  final String title;
  final String subTitle;
  final String price;
  final bool isDisc;

  const ItemListTab({
    Key key,
    this.title,
    this.subTitle,
    this.price,
    this.isDisc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, right: 25, top: 5),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Colors.grey[200]),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  isDisc
                      ? SvgPicture.asset('assets/icons/disc.svg', height: 16)
                      : SizedBox(
                          width: 0,
                        )
                ],
              ),
              Text(
                subTitle,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11),
              )
            ],
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                      text: '\$ ',
                      children: [
                    TextSpan(
                        text: price,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 22))
                  ])),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
