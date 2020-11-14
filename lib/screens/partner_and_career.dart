import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constant/color_pallete.dart';

class PartnerAndCareer extends StatefulWidget {
  @override
  _PartnerAndCareerState createState() => _PartnerAndCareerState();
}

class _PartnerAndCareerState extends State<PartnerAndCareer> {
  CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                "Partner & Career",
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: ColorPallete.textBlack,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search Event & Promo",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPallete.textGrey3,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "Partner",
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: ColorPallete.textBlack,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
                CarouselSlider(
                  carouselController: _carouselController,
                  options: CarouselOptions(
                      height: 150,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      initialPage: 3,
                      autoPlayAnimationDuration: Duration(milliseconds: 700),
                      viewportFraction: 0.8),
                  items: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/alodokter.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/sos1.png'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/handayani.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Lowongan",
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: ColorPallete.textBlack,
                            fontWeight: FontWeight.w600,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [1, 2, 3]
                        .map(
                          (e) => AspectRatio(
                            aspectRatio: 3 / 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorPallete.mainGrey,
                                    style: BorderStyle.none,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorPallete.mainGrey,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 4 / 1.3,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              children: [
                                                Text('Lowongan',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1
                                                        .copyWith(
                                                            color: ColorPallete
                                                                .mainBlue)),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    "Perawat (S1 Kep.,Ners Memiliki STR yang \n berlaku, IPK Min : 3, Perempuan/Laki-Laki)",
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: ColorPallete
                                                          .textBlack,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "23 Sep 2020",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: ColorPallete
                                                          .textGrey),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        color: ColorPallete.mainWhite,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
