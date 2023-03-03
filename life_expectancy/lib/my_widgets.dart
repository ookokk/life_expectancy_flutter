import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
class ManWomanWidget extends StatelessWidget {
  final String cinsiyet;
  final IconData? icon;

  ManWomanWidget({required this.cinsiyet, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50,
          color: Colors.black54,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          cinsiyet,
          style: const TextStyle(
              color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  final Color? renk;
  final Widget? child;

  const MyContainer({super.key, this.renk = Colors.white, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: renk),
    );
  }
}
