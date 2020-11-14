import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:smkdev/constant/color_pallete.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    _tabController=TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 30),
              color: ColorPallete.mainBlue,
              child: Text(
                'Profile',
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: ColorPallete.textWhite,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
          Positioned(
              child: DraggableScrollableSheet(
            initialChildSize: 0.8,
            builder: (context, scrollController) {
              return AspectRatio(
                aspectRatio: 9 / 15,
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: 60,
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorPallete.mainWhite,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                          ),
                        ),
                        child: ListView(
                          controller: scrollController,
                          children: [],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: size.width * 0.35,
                              width: size.width * 0.35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorPallete.mainGrey,
                              ),
                            ),
                            SizedBox(height:10),
                            TabBar(
                              controller: _tabController,
                              tabs: [
                              Tab(
                                child: Badge(
                                  child: Container(
                                    child: Center(
                                      child: Text("Notifikasi"),
                                    ),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Badge(
                                  child: Container(
                                    child: Center(
                                      child: Text("History Booking"),
                                    ),
                                  ),
                                ),
                              )
                            ])
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
