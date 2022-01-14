import 'package:flutter/material.dart';
import 'package:cotten_candy_ui/cotten_candy_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(title: 'Cotten Candy UI Example'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              const CandyTextField(
                labelText: '출발',
              ),
              const SizedBox(height: 5),
              CandyRadioButton(
                  radioComponents: const ['최단경로', '지하철', '버스'],
                  onChanged: (value) {}),
              const SizedBox(height: 5),
              CandyTimePicker(
                height: 63,
                onChanged: (hour, minute) {},
              ),
              DayOfTheWeek(
                borderWidth: 1,
                onChanged: (value) {},
              ),
              const SizedBox(height: 5),
              const CandyTimeLine(children: [
                Indicator(
                  child: Text(
                    '출발',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF), fontWeight: FontWeight.w800),
                  ),
                  title: Text('집'),
                ),
                Indicator(
                  child: Icon(
                    Icons.directions_run,
                    color: Colors.white,
                  ),
                  title: Text('도보 20분'),
                  subTitle: Text('12km'),
                ),
                Indicator(
                  child: Icon(
                    Icons.directions_bus,
                    color: Colors.white,
                  ),
                  title: Text('마석역'),
                  subTitle: Text('경춘선'),
                ),
                Indicator(
                  child: Text('도착', style: TextStyle(color: Color(0xFFFFFFFF))),
                  title: Text('광운대역'),
                  subTitle: Text('1호선'),
                ),
              ], connector: Connector()),
              CandyButton(
                  child: const Text('나의 시작길 입력하기',
                      style: TextStyle(
                          color: Color(0xFFFC5D5D),
                          fontWeight: FontWeight.w800)),
                  onPressed: () {}),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
