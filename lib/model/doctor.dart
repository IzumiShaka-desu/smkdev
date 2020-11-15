import 'package:smkdev/model/schedule.dart';

class Doctor {
  String name;
  String spec;
  String biografi;
  String credential;
  String affiliateAcademy;
  List<Schedule> schedules;
  Doctor(
      {this.affiliateAcademy,
      this.biografi,
      this.credential,
      this.name,
      this.schedules,
      this.spec});
}
