import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final double? textSize = 20;
  final double width;
  final double height;
  final Function()? onPressed;
  final Color textColor = const Color(0xFFFC5D5D);
  final Color buttonColor = const Color(0xFFFFFFFF);

  const DefaultButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.width,
      required this.height
      // this.textSize
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(text,
          style: TextStyle(color: textColor, fontWeight: FontWeight.w800)),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(42.0)),
      elevation: 0.0,
      fillColor: buttonColor,
      constraints: BoxConstraints.tightFor(width: width, height: height
          ),
    );
  }
}

class DefaultButton2 extends StatelessWidget {
  final String text;
  final double? textSize = 20;
  final double width;
  final double height;
  final Function()? onPressed;
  final Color textColor = const Color(0xFFFFFFFF);
  final Color buttonColor = const Color(0xFFFECFC3);

  const DefaultButton2(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.width,
      required this.height
      // this.textSize
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(text,
          style: TextStyle(color: textColor, fontWeight: FontWeight.w800)),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(42.0)),
      elevation: 0.0,
      fillColor: buttonColor,
      constraints: BoxConstraints.tightFor(width: width, height: height
          ),
    );
  }
}

class DefaultButton3 extends StatelessWidget {
  final String text;
  final double? textSize = 20;
  final double width;
  final double height;
  final Function()? onPressed;
  final Color textColor = const Color(0xFFFFFFFF);
  final Color buttonColor = const Color(0xFFFC5D5D);

  const DefaultButton3({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.width,
    required this.height,
    // this.textSize
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(text,
          style: TextStyle(color: textColor, fontWeight: FontWeight.w800)),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(42.0)),
      elevation: 0.0,
      fillColor: buttonColor,
      constraints: BoxConstraints.tightFor(width: width, height: height
          ),
    );
  }
}
