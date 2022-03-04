import 'package:cotton_candy_ui/src/color_source.dart';
import 'package:flutter/material.dart';

///
/// ## Candy Textfield
///  - Default styled buton for Cotton Candy UI.
///  - Please read [`README.md`](https://pub.dev/packages/cotton_candy_ui) document to get more detailed information about this widget.
///

class CandyTextField extends StatefulWidget {
  final Function(String?)? onChanged;
  final double width;
  final double height;
  final double? elevation;
  final String? prefixText;
  final TextStyle? prefixStyle;
  final Widget? prefixIcon;
  final Widget? label;
  final String? hintText;
  final TextStyle? hintStyle;
  final Color filledColor;
  final Color focusedsideColor;
  final Color enabledsideColor;
  final double borderRadius;

  /// Creates a TextField widget
  const CandyTextField(
      {Key? key,
      required this.onChanged,
      this.width = 320,
      this.height = 60,
      this.elevation = 1,
      this.prefixText,
      this.prefixStyle,
      this.prefixIcon,
      this.label,
      this.hintText,
      this.hintStyle,
      this.filledColor = const Color(0xFFFFFFFF),
      this.focusedsideColor = CandyColors.candyPink,
      this.enabledsideColor = const Color(0xFFFFFFFF),
      this.borderRadius = 15})
      : super(key: key);

  @override
  _CandyTextFieldState createState() => _CandyTextFieldState();
}

class _CandyTextFieldState extends State<CandyTextField> {
  String? currentValue;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: widget.elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: TextField(
        maxLines: null,
        expands: true,
        onChanged: (value) {
          setState(() {
            currentValue = value;
          });
          widget.onChanged!(currentValue);
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.filledColor,
          prefixText: widget.prefixText,
          prefixStyle: widget.prefixStyle,
          prefixIcon: SizedBox(
              width: widget.height,
              height: widget.height,
              child: Center(
                child: widget.prefixIcon,
              )),
          label: widget.label,
          hintText: widget.hintText,
          hintStyle: widget.hintStyle,
          constraints: BoxConstraints.tightFor(
              width: widget.width, height: widget.height),
          focusedBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius)),
            borderSide: BorderSide(width: 1, color: widget.focusedsideColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius)),
            borderSide: BorderSide(width: 1, color: widget.enabledsideColor),
          ),
        ),
      ),
    );
  }
}
