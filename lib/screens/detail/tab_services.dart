import 'package:beauty_app/widgets/card_label.dart';
import 'package:flutter/material.dart';

class TabBarService extends StatefulWidget {
  @override
  _TabBarServiceState createState() => _TabBarServiceState();
}

class _TabBarServiceState extends State<TabBarService>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  int _currentIndex = 0;
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
                  child: ListView(
                    children: [
                      CardLabel(
                        boldText: 'Services',
                        lightText: 'Top ',
                        moreButton: false,
                      ),
                      ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Text('ok');
                          })
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
