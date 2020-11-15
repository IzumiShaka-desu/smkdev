import 'package:flutter/material.dart';
import 'package:smkdev/constant/color_pallete.dart';
import 'package:smkdev/model/facility.dart';

class DetailService extends StatelessWidget {
  final Facility facility;

  const DetailService({Key key, this.facility}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.mainWhite,
      appBar: AppBar(
        title: Text(
          'Fasilitas',
        ),
      ),
      body: Stack(children: [
        Positioned.fill(
          child: Container(
            color: ColorPallete.mainGrey,
          ),
        ),
        Positioned(
          child: DraggableScrollableSheet(
            initialChildSize: 0.7,
            builder: (ctx, scrollController) {
              return Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: ColorPallete.mainWhite,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                ),
                child: ListView(
                  controller: scrollController,
                  children: [
                    Text(
                      'Foto Ruangan - SMKDEV',
                      style: TextStyle(
                        fontSize: 10,
                        color: ColorPallete.textGrey,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Fasilitas',
                          style: TextStyle(
                            color: ColorPallete.mainBlue,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          facility.name,
                          style: Theme.of(context).textTheme.headline5.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          facility.date,
                          style: TextStyle(
                            fontSize: 11,
                            color: ColorPallete.textGrey,
                          ),
                        ),
                      ],
                    ),
                    Row(children: [
                      Expanded(child: Text(facility.desc,))
                    ],)
                  ],
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
