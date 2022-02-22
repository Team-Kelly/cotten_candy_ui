import 'package:cotton_candy_ui/src/color_source.dart';
import 'package:flutter/material.dart';

///
/// ## Candy Textfield
///  - Default styled buton for Cotton Candy UI.
///  - Please read [`README.md`](https://pub.dev/packages/cotton_candy_ui) document to get more detailed information about this widget.
///

class CandyTextField extends StatefulWidget {
  final Function(String?)? onChanged;
  final String? labelText;
  final double width;
  final double height;
  final Color labelColor;
  final Color filledColor;
  final Color focusedsideColor;
  final Color enabledsideColor;
  final double borderRadius;

  /// Creates a TextField widget
  const CandyTextField(
      {Key? key,
      required this.onChanged,
      this.labelText,
      this.width = 320,
      this.height = 60,
      this.labelColor = CandyColors.candyPink,
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
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextField(
        onChanged: (value) {
          setState(() {
            currentValue = value;
          });
          widget.onChanged!(currentValue);
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.filledColor,
          labelText:
              (widget.labelText != null) ? (' ' + widget.labelText!) : null,
          labelStyle: TextStyle(color: widget.labelColor),
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
