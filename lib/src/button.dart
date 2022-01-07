import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  final double width;
  final double height;
  final Color buttonColor;
  final double borderRadius;
  final double elevation;

  const DefaultButton(
      {Key? key,
      required this.onPressed,
      required this.child,
      this.width = 305,
      this.height = 80,
      this.buttonColor = const Color(0xFFFFFFFF),
      this.borderRadius = 42,
      this.elevation = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: child,
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(width: width, height: height),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      elevation: elevation,
      fillColor: buttonColor,
    );
  }
}
