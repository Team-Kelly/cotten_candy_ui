import 'package:flutter/material.dart';
import 'package:cotton_candy_ui/cotton_candy_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title = "Cotton Candy UI Example";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),

              ///
              ///usage of CandyTextField
              ///
              CandyTextField(
                labelText: '출발',
                onChanged: (value) {},
              ),

              const SizedBox(height: 5),

              ///
              ///usage of CandyRadioButton
              ///
              CandyRadioButton(
                radioComponents: const ['최단경로', '지하철', '버스'],
                onChanged: (value) {},
              ),
              const SizedBox(height: 5),

              ///
              ///usage of CandyTimePicker
              ///
              CandyTimePicker(
                height: 63,
                onChanged: (hour, minute) {},
              ),

              ///
              ///usage of CandyDayOfTheWeek
              ///
              CandyDayOfTheWeek(
                borderWidth: 1,
                onChanged: (value) {},
              ),
              const SizedBox(height: 5),

              ///
              ///usage of CandyTimeLine
              ///
              Container(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: const CandyTimeLine(
                  children: [
                    CandyIndicator(
                      child: Text(
                        '출발',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      title: Text('집'),
                    ),

                    ///
                    ///usage of CandyIndicator
                    ///
                    CandyIndicator(
                      child: Icon(
                        Icons.directions_run,
                        color: Colors.white,
                      ),
                      title: Text('도보 20분'),
                      subTitle: Text('12km'),
                    ),
                    CandyIndicator(
                      child: Icon(
                        Icons.directions_bus,
                        color: Colors.white,
                      ),
                      title: Text('마석역'),
                      subTitle: Text('경춘선'),
                    ),
                    CandyIndicator(
                      child: Text(
                        '도착',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      title: Text('광운대역'),
                      subTitle: Text('1호선'),
                    ),
                  ],
                  connector: CandyConnector(),
                ),
              ),

              ///
              ///usage of CandyButton
              ///
              CandyButton(
                child: const Text(
                  '나의 시작길 입력하기',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
