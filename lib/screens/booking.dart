import 'package:flutter/material.dart';
import 'package:smkdev/constant/color_pallete.dart';

class Booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                "Booking",
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: ColorPallete.textBlack,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
          SizedBox(height:10),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [1, 2, 3, 4, 5, 7, 8, 5]
                  .map(
                    (e) => Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: ColorPallete.mainGrey,
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                "Dokter",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: ColorPallete.textBlack,
                                    ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Dokter",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(fontWeight: FontWeight.normal),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
