import 'package:cotten_candy_ui/src/color_source.dart';
import 'package:flutter/material.dart';

///
/// ## Candy Textfield
///  - Default styled buton for Cotten Candy UI.
///  - Please read [`README.md`](https://pub.dev/packages/cotten_candy_ui) document to get more detailed information about this widget.
///
class CandyTextField extends StatelessWidget {
  final String? labelText;
  final double width;
  final double height;
  final Color labelColor;
  final Color filledColor;
  final Color focusedsideColor;
  final Color enabledsideColor;
  final double borderRadius;

  const CandyTextField(
      {Key? key,
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
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: TextField(
            decoration: InputDecoration(
          filled: true,
          fillColor: filledColor,
          labelText: (labelText != null) ? (' ' + labelText!) : null,
          labelStyle: TextStyle(color: labelColor),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            borderSide: BorderSide(width: 1, color: focusedsideColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            borderSide: BorderSide(width: 1, color: enabledsideColor),
          ),
        )));
  }
}
