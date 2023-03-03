import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/result_page.dart';
import 'package:life_expectancy/user_data.dart';
import 'my_widgets.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double icilenSigara = 5.0;
  double yapilanEgzersiz = 1.0;
  int boy = 170;
  double kilo = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LİFE EXPECTANCY',
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                      renk: Colors.green,
                      child: Row(
                        children: [
                          const Expanded(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                'HEIGHT',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            child: RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  boy.toString(),
                                  style: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Expanded(
                              child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      boy++;
                                    });
                                  },
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      shadowColor: Colors.black54,
                                      elevation: 1,
                                      minimumSize: const Size(20, 30),
                                      side: const BorderSide(
                                        color: Colors.black54,
                                        width: .1,
                                      )),
                                  child: const Text(
                                    '+',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                                OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      boy--;
                                    });
                                  },
                                  child: const Text(
                                    '-',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      shadowColor: Colors.black54,
                                      elevation: 1,
                                      minimumSize: Size(20, 30),
                                      side: const BorderSide(
                                        color: Colors.black54,
                                        width: .1,
                                      )),
                                ),
                              ],
                            ),
                          ))
                        ],
                      )),
                ),
                Expanded(
                  child: MyContainer(
                      renk: Colors.green,
                      child: Row(
                        children: [
                          const Expanded(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                'WEIGHT',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            child: RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  kilo.toString(),
                                  style: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Expanded(
                              child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      kilo++;
                                    });
                                  },
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      shadowColor: Colors.black54,
                                      elevation: 1,
                                      minimumSize: const Size(20, 30),
                                      side: const BorderSide(
                                        color: Colors.black54,
                                        width: .1,
                                      )),
                                  child: const Text(
                                    '+',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                                OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      kilo--;
                                    });
                                  },
                                  // ignore: sort_child_properties_last
                                  child: const Text(
                                    '-',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      shadowColor: Colors.black54,
                                      elevation: 1,
                                      minimumSize: Size(20, 30),
                                      side: const BorderSide(
                                        color: Colors.black54,
                                        width: .1,
                                      )),
                                ),
                              ],
                            ),
                          ))
                        ],
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'How Many Cigaretttes Do You Smoke A Day?',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            icilenSigara.round().toString(),
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Slider(
                              min: 0,
                              max: 30,
                              value: icilenSigara,
                              onChanged: (double value) {
                                setState(() {
                                  icilenSigara = value;
                                });
                              })
                        ],
                      ),
                      renk: Colors.green),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'How Many Times A Week Do You Train?',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            yapilanEgzersiz.round().toString(),
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Slider(
                              divisions: 7,
                              min: 0,
                              max: 7,
                              value: yapilanEgzersiz,
                              onChanged: (double value) {
                                setState(() {
                                  yapilanEgzersiz = value;
                                });
                              })
                        ],
                      ),
                      renk: Colors.green),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        seciliCinsiyet = 'WOMAN';
                      });
                    },
                    child: MyContainer(
                      renk: seciliCinsiyet == 'WOMAN'
                          ? Colors.yellow
                          : Colors.green,
                      child: ManWomanWidget(
                          cinsiyet: 'WOMAN', icon: FontAwesomeIcons.venus),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        seciliCinsiyet = 'MAN';
                      });
                    },
                    child: MyContainer(
                      renk: seciliCinsiyet == 'MAN'
                          ? Colors.yellow
                          : Colors.green,
                      child: ManWomanWidget(
                        cinsiyet: 'MAN',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(UserData(
                          kilo: kilo,
                          boy: boy,
                          seciliCinsiyet: seciliCinsiyet,
                          icilenSigara: icilenSigara,
                          yapilanEgzersiz: yapilanEgzersiz))));
            },
            child: Text(
              'CALCULATE',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
