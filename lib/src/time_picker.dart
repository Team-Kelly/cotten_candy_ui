// import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePicker extends StatelessWidget {
  // final int hour;
  // final int minute;
  const TimePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
          width: 60,
          child:
              // CupertinoDatePicker(
              //                 mode: CupertinoDatePickerMode.time,
              //                 initialDateTime: DateTime.now(),
              //                 onDateTimeChanged: (val) {
              //                   // setState(() {
              //                   //   tempHour = val.hour;
              //                   //   tempMinute = val.minute;
              //                   // });
              //                 }),
              Builder(builder: (context) {
            List<Widget> hours = [];
            for (int i = 0; i < 2; i++) {
              for (int hour = 01; hour < 13; hour++) {
                hours.add(Text(
                  '$hour',
                  style: const TextStyle(fontSize: 20),
                ));
              }
            }
            return CupertinoPicker(
                selectionOverlay: SizedBox(
                  width: 35,
                  height: 30,
                  child: Column(
                    children: [
                      Container(
                        height: 25,
                        width: 35,
                      ),
                      Container(
                        height: 2,
                        width: 35,
                        color: const Color(0xFFFC5D5D),
                      ),
                      Container(
                        height: 3,
                        width: 35,
                      ),
                    ],
                  ),
                ),
                looping: true,
                itemExtent: 30,
                onSelectedItemChanged: (onSelectedItemChanged) {},
                children: hours);
          }),
        ),
        const Text(
          '시',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 100,
          width: 60,
          child: Builder(builder: (context) {
            List<Widget> minutes = [];
            for (int minute = 00; minute < 60; minute++) {
              minutes.add(Text(
                '$minute',
                style: const TextStyle(fontSize: 20),
              ));
            }
            return CupertinoPicker(
                selectionOverlay: SizedBox(
                  width: 35,
                  height: 30,
                  child: Column(
                    children: [
                      Container(
                        height: 25,
                        width: 35,
                      ),
                      Container(
                        height: 2,
                        width: 35,
                        color: const Color(0xFFFC5D5D),
                      ),
                      Container(
                        height: 3,
                        width: 35,
                      ),
                    ],
                  ),
                ),
                looping: true,
                itemExtent: 30,
                onSelectedItemChanged: (onSelectedItemChanged) {},
                children: minutes);
          }),
        ),
        const Text(
          '분',
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
// CupertinoPicker로 커스텀 가능