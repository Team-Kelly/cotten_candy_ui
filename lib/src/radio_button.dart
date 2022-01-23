import 'package:cotten_candy_ui/src/color_source.dart';
import 'package:flutter/material.dart';

///
/// ## Candy Radio Button
///  - Default styled buton for Cotten Candy UI.
///  - Please read [`README.md`](https://pub.dev/packages/cotten_candy_ui) document to get more detailed information about this widget.
///
class CandyRadioButton extends StatefulWidget {
  final Function(String?)? onChanged;
  final List<String> radioComponents;
  final double width;
  final double height;
  final double interval;
  final Color textColor;
  final Color selectedTextColor;
  final Color buttonColor;
  final Color selectedButtonColor;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? splashColor;
  final double borderRadius;
  final double elevation;

  const CandyRadioButton(
      {Key? key,
      required this.onChanged,
      required this.radioComponents,
      this.width = 100,
      this.height = 35,
      this.interval = 20,
      this.textColor = const Color(0xFFD8D8D8),
      this.selectedTextColor = const Color(0xFFFFFFFF),
      this.buttonColor = const Color(0xFFFFFFFF),
      this.selectedButtonColor = CandyColors.candyPink,
      this.focusColor,
      this.hoverColor,
      this.highlightColor,
      this.splashColor,
      this.borderRadius = 42,
      this.elevation = 0})
      : super(key: key);

  @override
  _CandyRadioButtonState createState() => _CandyRadioButtonState();
}

class _CandyRadioButtonState extends State<CandyRadioButton> {
  String? currentValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width * widget.radioComponents.length +
          widget.interval * (widget.radioComponents.length),
      child: Builder(builder: (context) {
        List<Widget> components = [];
        currentValue ??= widget.radioComponents[0];
        for (int i = 0; i < widget.radioComponents.length; i++) {
          components.add(SizedBox(
            width: (widget.width) + (widget.interval),
            child: Center(
                child: RawMaterialButton(
              child: Text(widget.radioComponents[i],
                  style: TextStyle(
                      color: (widget.radioComponents[i] == currentValue)
                          ? widget.selectedTextColor
                          : widget.textColor,
                      fontWeight: FontWeight.w800)),
              onPressed: () {
                setState(() {
                  currentValue = widget.radioComponents[i];
                });
                widget.onChanged!(currentValue);
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.borderRadius)),
              elevation: widget.elevation,
              fillColor: (widget.radioComponents[i] == currentValue)
                  ? widget.selectedButtonColor
                  : widget.buttonColor,
              focusColor: widget.focusColor,
              hoverColor: widget.hoverColor,
              highlightColor: widget.highlightColor,
              splashColor: widget.splashColor,
              constraints: BoxConstraints.tightFor(
                width: widget.width,
                height: widget.height,
              ),
            )),
          ));
        }
        return Row(
            mainAxisAlignment: MainAxisAlignment.center, children: components);
      }),
    );
  }
}
