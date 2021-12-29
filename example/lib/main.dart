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
              DefaultTextField(
                hintText: '출발',
                width: MediaQuery.of(context).size.width * 32 / 39,
                height: MediaQuery.of(context).size.width * 8 / 39,
              ),
              const SizedBox(height: 10),
              DefaultRadioButton(
                  radioComponents: const ['최단경로', '지하철', '버스'],
                  width: 100,
                  height: 35,
                  onChanged: (value) {}),
              const SizedBox(height: 20),
              DefaultButton(
                  text: '나의 시작길 입력하기',
                  width: MediaQuery.of(context).size.width * (61 / 78),
                  height: 83,
                  onPressed: () {}),
              const SizedBox(height: 20),
              DefaultButton2(
                  text: '나의 시작길 입력하기',
                  width: MediaQuery.of(context).size.width * (61 / 78),
                  height: 83,
                  onPressed: () {}),
              const SizedBox(height: 20),
              DefaultButton3(
                  text: '나의 시작길 입력하기',
                  width: MediaQuery.of(context).size.width * (61 / 78),
                  height: 83,
                  onPressed: () {}),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
