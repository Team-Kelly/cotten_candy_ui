import 'package:cotten_candy_ui/src/color_source.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///
/// ## Candy Time Picker
///  - Default styled buton for Cotten Candy UI.
///  - Please read [`README.md`](https://pub.dev/packages/cotten_candy_ui) document to get more detailed information about this widget.
///
class CandyTimePicker extends StatefulWidget {
  final Function(int?, int?)? onChanged;
  final Color highlightColor;
  final double width;
  final double height;
  final double textSize;
  const CandyTimePicker(
      {Key? key,
      required this.onChanged,
      this.highlightColor = CandyColors.candyPink,
      this.width = 250,
      this.height = 100,
      this.textSize = 20})
      : super(key: key);

  @override
  _CandyTimePickerState createState() => _CandyTimePickerState();
}

class _CandyTimePickerState extends State<CandyTimePicker> {
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
            width: widget.textSize * 2.5,
            child: CupertinoPicker(
                selectionOverlay: SizedBox(
                  width: widget.textSize * 2.5,
                  height: widget.height * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: widget.height * 0.25,
                        width: widget.textSize * 2.5,
                      ),
                      Container(
                        height: widget.height * 0.02,
                        width: widget.textSize * 2.5,
                        color: widget.highlightColor,
                      ),
                      SizedBox(
                        height: widget.height * 0.03,
                        width: widget.textSize * 2.5,
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
          width: ((widget.width - widget.textSize * 12) < 0)
              ? 0
              : widget.width - widget.textSize * 12,
        ),
        SizedBox(
          height: widget.height,
          width: widget.textSize * 3,
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
                  width: widget.textSize * 2,
                  height: widget.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: widget.height * 0.25,
                        width: widget.textSize * 2,
                      ),
                      Container(
                        height: widget.height * 0.02,
                        width: widget.textSize * 2,
                        color: widget.highlightColor,
                      ),
                      SizedBox(
                        height: widget.height * 0.03,
                        width: widget.textSize * 2,
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
        SizedBox(
          height: widget.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '시',
                style: TextStyle(fontSize: widget.textSize),
              ),
              SizedBox(height: widget.height * 0.1)
            ],
          ),
        ),
        SizedBox(
          height: widget.height,
          width: widget.textSize * 2.5,
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
                  width: widget.textSize * 2,
                  height: widget.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: widget.height * 0.25,
                        width: widget.textSize * 2,
                      ),
                      Container(
                        height: widget.height * 0.02,
                        width: widget.textSize * 2,
                        color: widget.highlightColor,
                      ),
                      SizedBox(
                        height: widget.height * 0.03,
                        width: widget.textSize * 2,
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
        SizedBox(
          height: widget.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '분',
                style: TextStyle(fontSize: widget.textSize),
              ),
              SizedBox(height: widget.height * 0.1)
            ],
          ),
        )
      ],
    );
  }
}
