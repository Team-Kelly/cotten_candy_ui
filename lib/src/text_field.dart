import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final String? hintText;
  final double width;
  final double height;
  const DefaultTextField(
      {Key? key, required this.width, required this.height, this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: TextField(
            decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: (hintText != null) ? (' ' + hintText!) : ' ',
          labelStyle: const TextStyle(color: Color(0xFFFC5D5D)),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
        )));
  }
}
// expanded랑 주소입력 기능 추가하기(around 참고)