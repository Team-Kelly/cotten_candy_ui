import 'package:flutter/material.dart';

class DayOfTheWeek extends StatefulWidget {
  final Function(List<bool>)? onChanged;
  final double width;
  final double height;
  final Color buttonColor;
  final Color defaultColor;
  final Color selectedColor;
  final double borderRadius;
  final double elevation;
  final double convinientButtonInterval;
  final double convinientButtonWidth;
  final double convinientButtonHeight;
  final List<bool> isSelected = [true, true, true, true, true, true, true];
  DayOfTheWeek(
      {Key? key,
      required this.onChanged,
      this.width = 30,
      this.height = 30,
      this.buttonColor = const Color(0xFFFFFFFF),
      this.defaultColor = Colors.grey,
      this.selectedColor = Colors.blue,
      this.borderRadius = 30,
      this.elevation = 0,
      this.convinientButtonInterval = 40,
      this.convinientButtonWidth = 60,
      this.convinientButtonHeight = 30})
      : super(key: key);

  @override
  _DayOfTheWeekState createState() => _DayOfTheWeekState();
}

class _DayOfTheWeekState extends State<DayOfTheWeek> {
  // bool weekday = true;
  // bool weekend = true;
  // bool allday = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RawMaterialButton(
                child: Text('월',
                    style: TextStyle(
                        color:
                            (widget.isSelected[0]) ? widget.selectedColor : widget.defaultColor,
                        fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    (widget.isSelected[0])
                        ? widget.isSelected[0] = false
                        : widget.isSelected[0] = true;
                  });
                  widget.onChanged!(widget.isSelected);
                },
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: (widget.isSelected[0]) ? widget.selectedColor : widget.defaultColor,
                    ),
                    borderRadius: BorderRadius.circular(widget.borderRadius)),
                elevation: widget.elevation,
                fillColor: widget.buttonColor,
                constraints: BoxConstraints.tightFor(
                    width: widget.width, height: widget.height),
              ),
              RawMaterialButton(
                child: Text('화',
                    style: TextStyle(
                        color:
                            (widget.isSelected[1]) ? widget.selectedColor : widget.defaultColor,
                        fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    (widget.isSelected[1])
                        ? widget.isSelected[1] = false
                        : widget.isSelected[1] = true;
                  });
                  widget.onChanged!(widget.isSelected);
                },
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: (widget.isSelected[1]) ? widget.selectedColor : widget.defaultColor,
                    ),
                    borderRadius: BorderRadius.circular(widget.borderRadius)),
                elevation: widget.elevation,
                fillColor: widget.buttonColor,
                constraints: BoxConstraints.tightFor(
                    width: widget.width, height: widget.height),
              ),
              RawMaterialButton(
                child: Text('수',
                    style: TextStyle(
                        color:
                            (widget.isSelected[2]) ? widget.selectedColor : widget.defaultColor,
                        fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    (widget.isSelected[2])
                        ? widget.isSelected[2] = false
                        : widget.isSelected[2] = true;
                  });
                  widget.onChanged!(widget.isSelected);
                },
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: (widget.isSelected[2]) ? widget.selectedColor : widget.defaultColor,
                    ),
                    borderRadius: BorderRadius.circular(widget.borderRadius)),
                elevation: widget.elevation,
                fillColor: widget.buttonColor,
                constraints: BoxConstraints.tightFor(
                    width: widget.width, height: widget.height),
              ),
              RawMaterialButton(
                child: Text('목',
                    style: TextStyle(
                        color:
                            (widget.isSelected[3]) ? widget.selectedColor : widget.defaultColor,
                        fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    (widget.isSelected[3])
                        ? widget.isSelected[3] = false
                        : widget.isSelected[3] = true;
                  });
                  widget.onChanged!(widget.isSelected);
                },
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: (widget.isSelected[3]) ? widget.selectedColor : widget.defaultColor,
                    ),
                    borderRadius: BorderRadius.circular(widget.borderRadius)),
                elevation: widget.elevation,
                fillColor: widget.buttonColor,
                constraints: BoxConstraints.tightFor(
                    width: widget.width, height: widget.height),
              ),
              RawMaterialButton(
                child: Text('금',
                    style: TextStyle(
                        color:
                            (widget.isSelected[4]) ? widget.selectedColor : widget.defaultColor,
                        fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    (widget.isSelected[4])
                        ? widget.isSelected[4] = false
                        : widget.isSelected[4] = true;
                  });
                  widget.onChanged!(widget.isSelected);
                },
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: (widget.isSelected[4]) ? widget.selectedColor : widget.defaultColor,
                    ),
                    borderRadius: BorderRadius.circular(widget.borderRadius)),
                elevation: widget.elevation,
                fillColor: widget.buttonColor,
                constraints: BoxConstraints.tightFor(
                    width: widget.width, height: widget.height),
              ),
              RawMaterialButton(
                child: Text('토',
                    style: TextStyle(
                        color:
                            (widget.isSelected[5]) ? widget.selectedColor : widget.defaultColor,
                        fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    (widget.isSelected[5])
                        ? widget.isSelected[5] = false
                        : widget.isSelected[5] = true;
                  });
                  widget.onChanged!(widget.isSelected);
                },
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: (widget.isSelected[5]) ? widget.selectedColor : widget.defaultColor,
                    ),
                    borderRadius: BorderRadius.circular(widget.borderRadius)),
                elevation: widget.elevation,
                fillColor: widget.buttonColor,
                constraints: BoxConstraints.tightFor(
                    width: widget.width, height: widget.height),
              ),
              RawMaterialButton(
                child: Text('일',
                    style: TextStyle(
                        color:
                            (widget.isSelected[6]) ? widget.selectedColor : widget.defaultColor,
                        fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    (widget.isSelected[6])
                        ? widget.isSelected[6] = false
                        : widget.isSelected[6] = true;
                  });
                  widget.onChanged!(widget.isSelected);
                },
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: (widget.isSelected[6]) ? widget.selectedColor : widget.defaultColor,
                    ),
                    borderRadius: BorderRadius.circular(widget.borderRadius)),
                elevation: widget.elevation,
                fillColor: widget.buttonColor,
                constraints: BoxConstraints.tightFor(
                    width: widget.width, height: widget.height),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RawMaterialButton(
                child: const Text('주중',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    if (widget.isSelected[0] == true &&
                        widget.isSelected[1] == true &&
                        widget.isSelected[2] == true &&
                        widget.isSelected[3] == true &&
                        widget.isSelected[4] == true) {
                      widget.isSelected[0] = false;
                      widget.isSelected[1] = false;
                      widget.isSelected[2] = false;
                      widget.isSelected[3] = false;
                      widget.isSelected[4] = false;
                    } else {
                      widget.isSelected[0] = true;
                      widget.isSelected[1] = true;
                      widget.isSelected[2] = true;
                      widget.isSelected[3] = true;
                      widget.isSelected[4] = true;
                    }
                  });
                  widget.onChanged!(widget.isSelected);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: widget.elevation,
                fillColor: Colors.white,
                constraints:
                    BoxConstraints.tightFor(width: widget.convinientButtonWidth, height: widget.convinientButtonHeight),
              ),
              SizedBox(width: widget.convinientButtonInterval),
              RawMaterialButton(
                child: const Text('주말',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    if (widget.isSelected[5] == true &&
                        widget.isSelected[6] == true) {
                      widget.isSelected[5] = false;
                      widget.isSelected[6] = false;
                    } else {
                      widget.isSelected[5] = true;
                      widget.isSelected[6] = true;
                    }
                  });
                  widget.onChanged!(widget.isSelected);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: widget.elevation,
                fillColor: Colors.white,
                constraints:
                    BoxConstraints.tightFor(width: widget.convinientButtonWidth, height: widget.convinientButtonHeight),
              ),
              SizedBox(width: widget.convinientButtonInterval),
              RawMaterialButton(
                child: const Text('매일',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    if (widget.isSelected[0] == true &&
                        widget.isSelected[1] == true &&
                        widget.isSelected[2] == true &&
                        widget.isSelected[3] == true &&
                        widget.isSelected[4] == true &&
                        widget.isSelected[5] == true &&
                        widget.isSelected[6] == true) {
                      widget.isSelected[0] = false;
                      widget.isSelected[1] = false;
                      widget.isSelected[2] = false;
                      widget.isSelected[3] = false;
                      widget.isSelected[4] = false;
                      widget.isSelected[5] = false;
                      widget.isSelected[6] = false;
                    } else {
                      widget.isSelected[0] = true;
                      widget.isSelected[1] = true;
                      widget.isSelected[2] = true;
                      widget.isSelected[3] = true;
                      widget.isSelected[4] = true;
                      widget.isSelected[5] = true;
                      widget.isSelected[6] = true;
                    }
                  });
                  widget.onChanged!(widget.isSelected);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: widget.elevation,
                fillColor: Colors.white,
                constraints:
                    BoxConstraints.tightFor(width: widget.convinientButtonWidth, height: widget.convinientButtonHeight),
              ),
            ],
          )
        ],
      ),
    );
  }
}
