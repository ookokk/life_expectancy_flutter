import 'package:flutter/material.dart';
import 'package:life_expectancy/user_data.dart';

class Hesap {
  UserData userData;
  Hesap(this.userData);

  double hesaplama() {
    double sonuc;

    sonuc = 90 + userData.yapilanEgzersiz - userData.icilenSigara;
    sonuc = sonuc + (userData.boy / userData.kilo);
    if (userData.seciliCinsiyet == 'WOMAN') {
      return sonuc + 3;
    } else {
      return sonuc;
    }
  }
}
