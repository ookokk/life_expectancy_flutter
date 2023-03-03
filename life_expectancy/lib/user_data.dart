import 'package:flutter/material.dart';

class UserData {
  String? seciliCinsiyet;
  double icilenSigara;
  double yapilanEgzersiz;
  int boy;
  double kilo;

  UserData(
      {required this.yapilanEgzersiz,
      required this.icilenSigara,
      required this.seciliCinsiyet,
      required this.boy,
      required this.kilo});
}
