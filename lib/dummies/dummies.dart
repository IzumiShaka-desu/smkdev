import 'package:smkdev/model/doctor.dart';
import 'package:smkdev/model/event.dart';
import 'package:smkdev/model/facility.dart';
import 'package:smkdev/model/schedule.dart';

String loremDetail =
    "Amet - minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.";

List<Doctor> doctors = [
  Doctor(
    name: 'zidan',
    affiliateAcademy: loremDetail,
    biografi: loremDetail,
    credential: loremDetail,
    schedules: [
      Schedule(
        day: "senin",
        place: "Klinik SMKDEV",
        time: "08:00 - 16-00",
      ),
      Schedule(
        day: "selasa",
        place: "Klinik SMKDEV",
        time: "20:00 - 04-00",
      )
    ],
    spec: "kanker",
  ),
  Doctor(
    name: 'zoe',
    affiliateAcademy: loremDetail,
    biografi: loremDetail,
    credential: loremDetail,
    schedules: [
      Schedule(
        day: "senin",
        place: "Klinik SMKDEV",
        time: "08:00 - 16-00",
      ),
      Schedule(
        day: "kamis",
        place: "RS SMKDEV",
        time: "20:00 - 04-00",
      )
    ],
    spec: "umum",
  ),
  Doctor(
    name: 'mitsuki',
    affiliateAcademy: loremDetail,
    biografi: loremDetail,
    credential: loremDetail,
    schedules: [
      Schedule(
        day: "rabu",
        place: "RS SMKDEV",
        time: "08:00 - 16-00",
      ),
      Schedule(
        day: "jum'at",
        place: "Klinik SMKDEV",
        time: "20:00 - 04-00",
      )
    ],
    spec: "kulit",
  ),
  Doctor(
    name: 'mina',
    affiliateAcademy: loremDetail,
    biografi: loremDetail,
    credential: loremDetail,
    schedules: [
      Schedule(
        day: "senin",
        place: "Klinik SMKDEV",
        time: "08:00 - 16-00",
      ),
      Schedule(
        day: "rabu",
        place: "Klinik SMKDEV",
        time: "20:00 - 04-00",
      )
    ],
    spec: "umum",
  ),
  Doctor(
    name: 'victoria',
    affiliateAcademy: loremDetail,
    biografi: loremDetail,
    credential: loremDetail,
    schedules: [
      Schedule(
        day: "senin",
        place: "RS SMKDEV",
        time: "08:00 - 16-00",
      ),
      Schedule(
        day: "selasa",
        place: "Klinik SMKDEV",
        time: "20:00 - 04-00",
      )
    ],
    spec: "kulit",
  ),
  Doctor(
    name: 'chico',
    affiliateAcademy: loremDetail,
    biografi: loremDetail,
    credential: loremDetail,
    schedules: [
      Schedule(
        day: "senin",
        place: "Klinik SMKDEV",
        time: "08:00 - 16-00",
      ),
      Schedule(
        day: "selasa",
        place: "RS SMKDEV",
        time: "20:00 - 04-00",
      )
    ],
    spec: "jantung",
  ),
  Doctor(
    name: 'victor',
    affiliateAcademy: loremDetail,
    biografi: loremDetail,
    credential: loremDetail,
    schedules: [
      Schedule(
        day: "senin",
        place: "Klinik SMKDEV",
        time: "08:00 - 16-00",
      ),
      Schedule(
        day: "selasa",
        place: "Klinik SMKDEV",
        time: "20:00 - 04-00",
      )
    ],
    spec: "umum",
  )
];
List<Facility> facilities = [
  Facility(
    date: '12 nov 2020',
    desc: loremDetail,
    name: "Ruang Pemeriksaan",
  ),
  Facility(
    date: '12 oct 2020',
    desc: loremDetail,
    name: "Unit Gawat Darurat",
  ),
  Facility(
    date: '15 jan 2020',
    desc: loremDetail,
    name: "Kamar Mayat",
  ),
  Facility(
    date: '17 nov 2020',
    desc: loremDetail,
    name: "Instalasi Gawat Darurat",
  ),
];
List<Event> events = [
  Event(
    date: '18 nov 2018',
    title: 'World Science Day 2018 - Free Course & Consultation',
    desc: loremDetail,
  ),
  Event(
    date: '19 nov 2019',
    title: 'World Science Day 2019 - Free Course & Consultation',
    desc: loremDetail,
  ),Event(
    date: '20 nov 2020',
    title: 'World Science Day 2020 - Free Course & Consultation',
    desc: loremDetail,
  ),
];
