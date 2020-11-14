import 'package:flutter/material.dart';

import '../constant/color_pallete.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Tentang Kami",
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          color: ColorPallete.textBlack,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  AspectRatio(
                    aspectRatio: 4 / 2,
                    child: Container(
                      color: ColorPallete.mainGrey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    child: Text('Sekilas Tentang Kami'),
                  ),
                  Container(
                    child: Text(
                      'SMK.DEV adalah komunitas developer siswa SMK \n jurusan Rekayasa Perangkat Lunak (RPL), Teknik \n Komputer dan Jaringan (TKJ) dan Multimedia \n  (MM) dari seluruh Indonesia. Mereka adalah \n  talenta yang bersemangat dan luar biasa \n  berbakat serta kompetitif. Mereka bergabung \n  untuk meningkatkan skill coding, menunjukkan \n keahlian mereka dan siap merealisasikan \n  kebutuhan aplikasi untuk bisnis Anda. \n \n Didukung komunitas developer siswa SMK dari \n seluruh Indonesia, Kami siap untuk mewujudkan \n kebutuhan digital di perusahaan Anda.',
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    child: Image.asset(
                      'assets/maps.jpg',
                      fit: BoxFit.cover,
                    ),
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      'Temui Kami',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(fontWeight: FontWeight.normal),
                            text: "Jl. Margacinta No. 29 \n",
                          ),
                        ],
                        text: "Rumah Sakit SMKDEV \n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(fontWeight: FontWeight.normal),
                            text: "Jl. Mars barat I No. 9 \n",
                          ),
                        ],
                        text: "\t \t Klinik SMKDEV \n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    height: 200,
                    child: Image.asset(
                      'assets/hp.jpg',
                      fit: BoxFit.cover,
                    ),
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      'Layanan Darurat',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 30),
                  Container(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(fontWeight: FontWeight.normal),
                            text: "Setiap Hari 24 Jam\n",
                          ),
                        ],
                        text: "Unit Gawat Darurat \n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(fontWeight: FontWeight.normal),
                            text: "+622 7000 0000\n",
                          ),
                          TextSpan(
                            style: TextStyle(fontWeight: FontWeight.normal),
                            text: "+622 7000 0000\n",
                          ),
                        ],
                        text: "Ambulans Siaga \n \n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(fontWeight: FontWeight.normal),
                            text: "+62812 0000 0000\n",
                          ),
                        ],
                        text: "Telepon \n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    height: 200,
                    child: Image.asset(
                      'assets/jam.jpg',
                      fit: BoxFit.cover,
                    ),
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      'Waktu Operasional',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(fontWeight: FontWeight.normal),
                            text: "Senin - jumat : 08.00 - 20.00\n",
                          ),
                          TextSpan(
                            style: TextStyle(fontWeight: FontWeight.normal),
                            text: "Sabtu : 08.00 - 17.00\n",
                          ),
                        ],
                        text: "Rumah Sakit \n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(fontWeight: FontWeight.normal),
                            text: "Senin - jumat : 08.00 - 20.00\n",
                          ),
                          TextSpan(
                            style: TextStyle(fontWeight: FontWeight.normal),
                            text: "Sabtu : 08.00 - 17.00\n",
                          ),
                        ],
                        text: "Klinik \n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    child: Text.rich(
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
                    alignment: Alignment.center,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
