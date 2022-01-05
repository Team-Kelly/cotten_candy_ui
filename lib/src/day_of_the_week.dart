import 'package:flutter/material.dart';

class DayOfTheWeek extends StatefulWidget {
  final Function(List<bool>)? onChanged;
  final double width;
  final double height;
  final Color buttonColor;
  final double borderRadius;
  final double elevation;
  final List<bool> isSelected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  DayOfTheWeek(
      {Key? key,
      required this.onChanged,
      this.width = 30,
      this.height = 30,
      this.buttonColor = const Color(0xFFFFFFFF),
      this.borderRadius = 42,
      this.elevation = 0})
      : super(key: key);

  @override
  _DayOfTheWeekState createState() => _DayOfTheWeekState();
}

class _DayOfTheWeekState extends State<DayOfTheWeek> {
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
                            (widget.isSelected[0]) ? Colors.blue : Colors.grey,
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
                      color: (widget.isSelected[0]) ? Colors.blue : Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(widget.borderRadius)),
                elevation: widget.elevation,
                fillColor: widget.buttonColor,
                constraints:
                    BoxConstraints.tightFor(width: widget.width, height: widget.height),
              ),
              RawMaterialButton(
                child: Text('화',
                    style: TextStyle(
                        color:
                            (widget.isSelected[1]) ? Colors.blue : Colors.grey,
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
                      color: (widget.isSelected[1]) ? Colors.blue : Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(widget.borderRadius)),
                elevation: widget.elevation,
                fillColor: widget.buttonColor,
                constraints:
                    BoxConstraints.tightFor(width: widget.width, height: widget.height),
              ),
              RawMaterialButton(
                child: Text('수',
                    style: TextStyle(
                        color:
                            (widget.isSelected[2]) ? Colors.blue : Colors.grey,
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
                      color: (widget.isSelected[2]) ? Colors.blue : Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(widget.borderRadius)),
                elevation: widget.elevation,
                fillColor: widget.buttonColor,
                constraints:
                    BoxConstraints.tightFor(width: widget.width, height: widget.height),
              ),
              RawMaterialButton(
                child: Text('목',
                    style: TextStyle(
                        color:
                            (widget.isSelected[3]) ? Colors.blue : Colors.grey,
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
                      color: (widget.isSelected[3]) ? Colors.blue : Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(widget.borderRadius)),
                elevation: widget.elevation,
                fillColor: widget.buttonColor,
                constraints:
                    BoxConstraints.tightFor(width: widget.width, height: widget.height),
              ),
              RawMaterialButton(
                child: Text('금',
                    style: TextStyle(
                        color:
                            (widget.isSelected[4]) ? Colors.blue : Colors.grey,
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
                      color: (widget.isSelected[4]) ? Colors.blue : Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(widget.borderRadius)),
                elevation: widget.elevation,
                fillColor: widget.buttonColor,
                constraints:
                    BoxConstraints.tightFor(width: widget.width, height: widget.height),
              ),
              RawMaterialButton(
                child: Text('토',
                    style: TextStyle(
                        color:
                            (widget.isSelected[5]) ? Colors.blue : Colors.grey,
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
                      color: (widget.isSelected[5]) ? Colors.blue : Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(widget.borderRadius)),
                elevation: widget.elevation,
                fillColor: widget.buttonColor,
                constraints:
                    BoxConstraints.tightFor(width: widget.width, height: widget.height),
              ),
              RawMaterialButton(
                child: Text('일',
                    style: TextStyle(
                        color:
                            (widget.isSelected[6]) ? Colors.blue : Colors.grey,
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
                      color: (widget.isSelected[6]) ? Colors.blue : Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(widget.borderRadius)),
                elevation: widget.elevation,
                fillColor: widget.buttonColor,
                constraints:
                    BoxConstraints.tightFor(width: widget.width, height: widget.height),
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
                    widget.isSelected[0] = true;
                    widget.isSelected[1] = true;
                    widget.isSelected[2] = true;
                    widget.isSelected[3] = true;
                    widget.isSelected[4] = true;
                    widget.isSelected[5] = false;
                    widget.isSelected[6] = false;
                  });
                  widget.onChanged!(widget.isSelected);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: widget.elevation,
                fillColor: Colors.white,
                constraints:
                    const BoxConstraints.tightFor(width: 50, height: 30),
              ),
              const SizedBox(width: 20),
              RawMaterialButton(
                child: const Text('주말',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w800)),
                onPressed: () {
                  setState(() {
                    widget.isSelected[0] = false;
                    widget.isSelected[1] = false;
                    widget.isSelected[2] = false;
                    widget.isSelected[3] = false;
                    widget.isSelected[4] = false;
                    widget.isSelected[5] = true;
                    widget.isSelected[6] = true;
                  });
                  widget.onChanged!(widget.isSelected);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: widget.elevation,
                fillColor: Colors.white,
                constraints:
                    const BoxConstraints.tightFor(width: 50, height: 30),
              ),
            ],
          )
        ],
      ),
    );
  }
}
