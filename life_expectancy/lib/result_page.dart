import 'package:flutter/material.dart';
import 'package:life_expectancy/user_data.dart';
import 'hesap.dart';

class ResultPage extends StatelessWidget {
  final UserData userData;
  const ResultPage(this.userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                Hesap(userData).hesaplama().round().toString(),
                style: TextStyle(
                  fontSize: 60,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('RETURN'),
              ))
        ],
      ),
    );
  }
}
