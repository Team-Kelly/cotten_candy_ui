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
              const DefaultTextField(
                labelText: '출발',
              ),
              const SizedBox(height: 10),
              DefaultRadioButton(
                  radioComponents: const ['최단경로', '지하철', '버스'],
                  onChanged: (value) {}),
              const SizedBox(height: 20),
              const TimePicker(),
              const SizedBox(height: 20),
              DayOfTheWeek(
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              DefaultButton(
                  child: const Text('나의 시작길 입력하기',
                      style: TextStyle(
                          color: Color(0xFFFC5D5D),
                          fontWeight: FontWeight.w800)),
                  onPressed: () {}),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
