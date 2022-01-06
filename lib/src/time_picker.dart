import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  final Function(int?, int?)? onChanged;
  final double width;
  final double height;
  final double textSize;
  const TimePicker(
      {Key? key,
      required this.onChanged,
      this.width = 60,
      this.height = 100,
      this.textSize = 20})
      : super(key: key);

  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  int hour = (TimeOfDay.now().hour > 11)
      ? TimeOfDay.now().hour - 12
      : TimeOfDay.now().hour;
  int minute = TimeOfDay.now().minute;
  int ampm = (TimeOfDay.now().hour > 11) ? 1 : 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: widget.height,
            width: 60,
            child: CupertinoPicker(
                selectionOverlay: SizedBox(
                  width: widget.textSize * 3.2,
                  height: 30,
                  child: Column(
                    children: [
                      Container(
                        height: 25,
                        width: widget.textSize * 3.2,
                      ),
                      Container(
                        height: 2,
                        width: widget.textSize * 3.2,
                        color: const Color(0xFFFC5D5D),
                      ),
                      Container(
                        height: 3,
                        width: widget.textSize * 3.2,
                      ),
                    ],
                  ),
                ),
                itemExtent: 30,
                scrollController:
                    FixedExtentScrollController(initialItem: ampm),
                onSelectedItemChanged: (onSelectedItemChanged) {
                  setState(() {
                    ampm = onSelectedItemChanged;
                  });
                  widget.onChanged!(hour, minute);
                },
                children: [
                  Text(
                    '오전',
                    style: TextStyle(fontSize: widget.textSize),
                  ),
                  Text(
                    '오후',
                    style: TextStyle(fontSize: widget.textSize),
                  )
                ])),
        SizedBox(
          height: widget.height,
          width: 60,
          child: Builder(builder: (context) {
            List<Widget> hours = [];
            hours.add(Text(
              '12',
              style: TextStyle(fontSize: widget.textSize),
            ));

            for (int hour = 1; hour < 12; hour++) {
              hours.add(Text(
                '$hour',
                style: TextStyle(fontSize: widget.textSize),
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
                        width: widget.textSize * 1.6,
                      ),
                      Container(
                        height: 2,
                        width: widget.textSize * 1.6,
                        color: const Color(0xFFFC5D5D),
                      ),
                      Container(
                        height: 3,
                        width: widget.textSize * 1.6,
                      ),
                    ],
                  ),
                ),
                looping: true,
                itemExtent: 30,
                scrollController:
                    FixedExtentScrollController(initialItem: hour),
                onSelectedItemChanged: (onSelectedItemChanged) {
                  setState(() {
                    if (ampm == 1) {
                      hour = onSelectedItemChanged + 12;
                    } else if (ampm == 0) {
                      hour = onSelectedItemChanged;
                    }
                  });

                  widget.onChanged!(hour, minute);
                },
                children: hours);
          }),
        ),
        Text(
          '시',
          style: TextStyle(fontSize: widget.textSize),
        ),
        SizedBox(
          height: widget.height,
          width: 60,
          child: Builder(builder: (context) {
            List<Widget> minutes = [];
            for (int minute = 0; minute < 60; minute++) {
              minutes.add(Text(
                '$minute',
                style: TextStyle(fontSize: widget.textSize),
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
                        width: widget.textSize * 1.6,
                      ),
                      Container(
                        height: 2,
                        width: widget.textSize * 1.6,
                        color: const Color(0xFFFC5D5D),
                      ),
                      Container(
                        height: 3,
                        width: widget.textSize * 1.6,
                      ),
                    ],
                  ),
                ),
                looping: true,
                itemExtent: 30,
                scrollController:
                    FixedExtentScrollController(initialItem: minute),
                onSelectedItemChanged: (onSelectedItemChanged) {
                  setState(() {
                    minute = onSelectedItemChanged;
                  });

                  widget.onChanged!(hour, minute);
                },
                children: minutes);
          }),
        ),
        Text(
          '분',
          style: TextStyle(fontSize: widget.textSize),
        )
      ],
    );
  }
}
