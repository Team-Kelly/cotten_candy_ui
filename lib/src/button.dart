import 'package:cotton_candy_ui/src/color_source.dart';
import 'package:flutter/material.dart';

///
/// ## Candy Button
///  - Default styled buton for Cotton Candy UI.
///  - Please read [`README.md`](https://pub.dev/packages/cotton_candy_ui) document to get more detailed information about this widget.
///
class CandyButton extends StatelessWidget {
  final Function()? onPressed;
  final Function()? onLongPress;
  final Widget child;
  final double width;
  final double height;
  final Color buttonColor;
  final Color enabledColor;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? splashColor;
  final double borderRadius;
  final double elevation;

  /// Creates a Button widget
  const CandyButton(
      {Key? key,
      required this.child,
      required this.onPressed,
      this.onLongPress,
      this.width = 305,
      this.height = 80,
      this.buttonColor = CandyColors.candyPink,
      this.enabledColor = const Color(0xFFFECFC3),
      this.focusColor,
      this.hoverColor,
      this.highlightColor,
      this.splashColor,
      this.borderRadius = 42,
      this.elevation = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: child,
      onPressed: onPressed,
      onLongPress: onLongPress,
      constraints: BoxConstraints.tightFor(width: width, height: height),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      elevation: elevation,
      fillColor: (onPressed != null) ? buttonColor : enabledColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
    );
  }
}
