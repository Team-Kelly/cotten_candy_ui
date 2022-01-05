import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final String? labelText;
  final double width;
  final double height;
  final Color labelColor;
  final Color filledColor;
  final Color focusedsideColor;
  final Color enabledsideColor;
  final double borderRadius;

  const DefaultTextField(
      {Key? key,
      this.labelText,
      this.width = 320,
      this.height = 83,
      this.labelColor = const Color(0xFFFC5D5D),
      this.filledColor = const Color(0xFFFFFFFF),
      this.focusedsideColor = const Color(0xFFFFFFFF),
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
// expanded랑 주소입력 기능 추가하기(around 참고)