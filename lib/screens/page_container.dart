import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:smkdev/constant/color_pallete.dart';
import 'package:smkdev/screens/booking.dart';
import 'package:smkdev/screens/home.dart';
import 'package:smkdev/screens/partner_and_career.dart';
import 'package:smkdev/screens/profile.dart';
import 'package:smkdev/screens/services.dart';

import 'about_us.dart';
import 'feedback.dart';

class PageContainer extends StatefulWidget {
  @override
  _PageContainerState createState() => _PageContainerState();
}

class _PageContainerState extends State<PageContainer>
    with TickerProviderStateMixin {
  TabController _tabController;
  List<Widget> tabs = [
    Home(),
    Services(),
    Booking(),
    Profile(),
    AboutUs(),
    PartnerAndCareer()
  ];
  bool isFloatingButtonExpanded = false;

  @override
  void initState() {
    _tabController = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: tabs,
          ),
        ),
      ),
      bottomNavigationBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.home_outlined,
                      ),
                      Text(
                        'Home',
                      )
                    ],
                  ),
                  onTap: () {
                    _tabController.animateTo(0);
                  }),
              GestureDetector(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.medical_services_outlined,
                      ),
                      Text(
                        'Layanan',
                      )
                    ],
                  ),
                  onTap: () {
                    _tabController.animateTo(1);
                  }),
              GestureDetector(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                      ),
                      Text(
                        'Booking',
                      )
                    ],
                  ),
                  onTap: () {
                    _tabController.animateTo(2);
                  }),
              Badge(
                badgeColor: ColorPallete.mainOrange,
                position: BadgePosition.topEnd(end: -1),
                animationDuration: Duration(milliseconds: 300),
                animationType: BadgeAnimationType.slide,
                badgeContent: Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
                child: GestureDetector(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.person_outline,
                        ),
                        Text(
                          'Profile',
                        )
                      ],
                    ),
                    onTap: () {
                      _tabController.animateTo(3);
                    }),
              ),
              GestureDetector(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.more_vert,
                      ),
                      Text('More')
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      isFloatingButtonExpanded = !isFloatingButtonExpanded;
                    });
                  })
            ],
          ),
        ),
      ),
      floatingActionButton: Stack(
        children: [
          AnimatedPositioned(
            right: 0,
            bottom: isFloatingButtonExpanded ? 0 : -500,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: ColorPallete.mainBlue,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Tentang Kami',
                          style: TextStyle(
                            color: ColorPallete.textWhite,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.group_outlined,
                            color: ColorPallete.textWhite)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: ColorPallete.mainBlue,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Partner & Karir',
                          style: TextStyle(
                            color: ColorPallete.textWhite,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.group_sharp, color: ColorPallete.textWhite)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) => FeedBacks()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: ColorPallete.mainBlue,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Feedback',
                          style: TextStyle(
                            color: ColorPallete.textWhite,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.favorite_outline_outlined,
                            color: ColorPallete.textWhite)
                      ],
                    ),
                  ),
                )
              ],
            ),
            duration: Duration(
              milliseconds: 500,
            ),
          ),
        ],
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
