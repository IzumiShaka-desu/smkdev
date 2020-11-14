import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smkdev/constant/color_pallete.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          AspectRatio(
            aspectRatio: 4 / 3,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
              color: ColorPallete.mainGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Sekilas Tentang \nRS. SMKDEV',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: ColorPallete.textWhite),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 25),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'SMKDEV komunitas developer siswa SMK jurusan Rekayasa Perangkat Lunak (RPL), Teknik Komputer dan Jaringan (TKJ) dan Multimedia (MM) dari seluruh Indonesia.',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(color: ColorPallete.textWhite),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DotsIndicator(
                          dotsCount: 4,
                          position: 0,
                          decorator: DotsDecorator(
                            activeColor: ColorPallete.mainBlue,
                            color: ColorPallete.mainWhite,
                            size: const Size.square(8.0),
                            activeSize: const Size(16.0, 8.0),
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              padding: EdgeInsets.fromLTRB(7, 5, 7, 5),
                              decoration: BoxDecoration(
                                color: ColorPallete.mainBlue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text('Read',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: ColorPallete.textWhite,
                                  ))),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 9 / 14,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Temui Kami',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  AspectRatio(
                    aspectRatio: 3 / 1.5,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorPallete.textGrey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              style: TextStyle(fontWeight: FontWeight.normal),
                              text: "Jl. Margacinta No. 29 \n",
                            ),
                            TextSpan(
                              style: TextStyle(fontWeight: FontWeight.normal),
                              text: "Senin - Jumat : 08.00 - 20.00\n",
                            ),
                            TextSpan(
                              style: TextStyle(fontWeight: FontWeight.normal),
                              text: "Sabtu : 08.00 - 13.00 \n",
                            ),
                          ],
                          text: "Rumah Sakit SMKDEV \n",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              style: TextStyle(fontWeight: FontWeight.normal),
                              text: "Jl. Mars Barat I No. 9\n",
                            ),
                            TextSpan(
                              style: TextStyle(fontWeight: FontWeight.normal),
                              text: "Senin - Jumat : 08.00 - 20.00\n",
                            ),
                            TextSpan(
                              style: TextStyle(fontWeight: FontWeight.normal),
                              text: "Sabtu : 08.00 - 13.00 \n",
                            ),
                          ],
                          text: "Klinik SMKDEV \n",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              style: TextStyle(fontWeight: FontWeight.normal),
                              text:
                                  "Senin - Jumat : 07.00 - 14.00, 16.00 - 19.00\n",
                            ),
                            TextSpan(
                              style: TextStyle(fontWeight: FontWeight.normal),
                              text: "Sabtu : 07.00 - 12.00\n",
                            ),
                          ],
                          text: "BPJS \n",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              color: ColorPallete.mainWhite,
            ),
          ),
          AspectRatio(
            aspectRatio: 9 / 11,
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              color: ColorPallete.mainBlue,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tentang Kami',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              color: ColorPallete.textWhite,
                              fontWeight: FontWeight.w600),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Selengkapnya',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(
                                    fontSize: 11,
                                    color: ColorPallete.textWhite,
                                    fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 3 / 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorPallete.mainGrey,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [1, 2, 3]
                            .map((e) => AspectRatio(
                                  aspectRatio: 2 / 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ColorPallete.mainGrey,
                                      ),
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 9 / 13,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 5),
              color: ColorPallete.mainWhite,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Berita Terbaru",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [1, 2, 3]
                            .map(
                              (e) => Padding(
                                padding: EdgeInsets.all(10),
                                child: AspectRatio(
                                  aspectRatio: 1 / 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: ColorPallete.mainGrey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Kontak & Pengaduan",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.location_pin),
                      Text(
                        "Rumah Sakit SMKDEV",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Jl. Margacinta No. 29",
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.email_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text("info@smk.dev")
                    ],
                  ),
                   SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.phone_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text("+622 7000 0000"),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(FontAwesomeIcons.hospital),
                      SizedBox(
                        width: 5,
                      ),
                      Text("+622 7000 0000"),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
