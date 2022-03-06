import 'package:cotton_candy_ui/src/color_source.dart';
import 'package:flutter/material.dart';

///
/// ## Candy Day Of The Week
///  - Default styled buton for Cotton Candy UI.
///  - Please read [`README.md`](https://pub.dev/packages/cotton_candy_ui) document to get more detailed information about this widget.
///
class CandyDayOfTheWeek extends StatefulWidget {
  final Function(List<bool>)? onChanged;
  final double width;
  final double height;
  final Color buttonColor;
  final Color defaultColor;
  final Color selectedColor;
  final double borderRadius;
  final double borderWidth;
  final double elevation;
  // final double convinientButtonInterval;
  // final double convinientButtonWidth;
  // final double convinientButtonHeight;
  final List<bool> isSelected = [true, true, true, true, true, true, true];

  /// Creates a DayOfTheWeek widget
  CandyDayOfTheWeek({
    Key? key,
    required this.onChanged,
    this.width = 30,
    this.height = 30,
    this.buttonColor = const Color(0xFFFFFFFF),
    this.defaultColor = const Color(0xFF9E9E9E),
    this.selectedColor = CandyColors.candyPink,
    this.borderRadius = 30,
    this.borderWidth = 0,
    this.elevation = 0,
    // this.convinientButtonInterval = 40,
    // this.convinientButtonWidth = 60,
    // this.convinientButtonHeight = 30
  }) : super(key: key);

  @override
  _CandyDayOfTheWeekState createState() => _CandyDayOfTheWeekState();
}

class _CandyDayOfTheWeekState extends State<CandyDayOfTheWeek> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Builder(
        builder: (_) {
          List<Widget> results = [];

          for (int i = 0; i < 7; i++) {
            results.add(
              candyCheckBox(
                label: (() {
                  final list = ["일", "월", "화", "수", "목", "금", "토"];
                  return list[i];
                })(),
                isSelected: widget.isSelected[i],
                elevation: widget.elevation,
                borderRadius: widget.borderRadius,
                borderWidth: widget.borderWidth,
                width: widget.width,
                height: widget.height,
                buttonColor: widget.buttonColor,
                selectedColor: widget.selectedColor,
                defaultColor: widget.defaultColor,
                onPressed: () {
                  setState(() {
                    (widget.isSelected[i])
                        ? widget.isSelected[i] = false
                        : widget.isSelected[i] = true;
                  });
                  widget.onChanged!(widget.isSelected);
                },
              ),
            );
          }

          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [...results],
          );
        },
      ),
    );
  }

  ///
  /// ## Candy Checkbox
  ///  - Default styled buton for Cotton Candy UI.
  ///  - Please read [`README.md`](https://pub.dev/packages/cotton_candy_ui) document to get more detailed information about this widget.
  ///

  Widget candyCheckBox({
    required String label,
    required bool isSelected,
    VoidCallback? onPressed,
    required double elevation,
    required double borderWidth,
    required double borderRadius,
    required double width,
    required double height,
    required Color buttonColor,
    required Color selectedColor,
    required Color defaultColor,
  }) =>
      RawMaterialButton(
        child: Text(label,
            style: TextStyle(
                color: isSelected ? selectedColor : defaultColor,
                fontWeight: FontWeight.w800)),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
            side: (borderWidth == 0)
                ? BorderSide(width: 0, color: buttonColor)
                : BorderSide(
                    width: borderWidth,
                    color: isSelected ? selectedColor : buttonColor,
                  ),
            borderRadius: BorderRadius.circular(borderRadius)),
        elevation: elevation,
        fillColor: buttonColor,
        constraints: BoxConstraints.tightFor(width: width, height: height),
      );
}
