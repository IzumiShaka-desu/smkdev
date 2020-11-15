import 'package:flutter/material.dart';
import 'package:smkdev/constant/color_pallete.dart';
import 'package:smkdev/dummies/dummies.dart';
import 'package:smkdev/model/event.dart';
import 'package:smkdev/model/facility.dart';
import 'package:smkdev/screens/detail_event.dart';
import 'package:smkdev/screens/detail_service.dart';

class Services extends StatelessWidget {
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
                "Layanan",
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
                    hintText: "Search dokter, fasilitas & layanan",
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
                      "Fasilitas & Layanan Terkini",
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: ColorPallete.textBlack,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
                AspectRatio(
                  aspectRatio: 1 / 0.7,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: facilities
                        .map(
                          (Facility e) => AspectRatio(
                            aspectRatio: 2 / 2.5,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (ctx) =>
                                          DetailService(facility: e),
                                    ),
                                  );
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorPallete.mainGrey,
                                )),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Row(
                  children: [
                    Text("Event & Promo",
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              color: ColorPallete.textBlack,
                              fontWeight: FontWeight.w600,
                            ))
                  ],
                ),
                Container(
                  child: Column(
                    children: events
                        .map(
                          (Event e) => AspectRatio(
                            aspectRatio: 3 / 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (ctx) => DetailEvent(
                                        event: e,
                                      ),
                                    ),
                                  );
                                },
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
                                                  Text('Event',
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
                                                      "Cara Membuat Sabun Herbal Sendiri, Bisa Pilih Aroma da..",
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
