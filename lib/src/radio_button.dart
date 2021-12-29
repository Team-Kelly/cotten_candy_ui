import 'package:flutter/material.dart';

class DefaultRadioButton extends StatefulWidget {
  final List<String> radioComponents;
  final double width;
  final double height;
  final Function(String?)? onChanged;
  const DefaultRadioButton({
    Key? key,
    required this.radioComponents,
    required this.width,
    required this.height,
    required this.onChanged,
  }) : super(key: key);

  @override
  _DefaultRadioButtonState createState() => _DefaultRadioButtonState(
      radioComponents: radioComponents,
      width: width,
      height: height,
      onChanged: onChanged);
}

class _DefaultRadioButtonState extends State<DefaultRadioButton> {
  List<String> radioComponents = [];
  double width;
  double height;
  String? currentValue;
  Function(String?)? onChanged;
  _DefaultRadioButtonState(
      {required this.radioComponents,
      required this.width,
      required this.height,
      required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Builder(builder: (context) {
        List<Widget> components = [];
        currentValue ??= radioComponents[0];
        for (int i = 0; i < radioComponents.length; i++) {
          components.add(SizedBox(
            width: 120,
            child: Center(
                child: RawMaterialButton(
              child: Text(radioComponents[i],
                  style: TextStyle(
                      color: (radioComponents[i] == currentValue)
                          ? Colors.black
                          : const Color(0xFFD8D8D8),
                      fontWeight: FontWeight.w800)),
              onPressed: () {
                setState(() {
                  currentValue = radioComponents[i];
                });
                onChanged!(currentValue);
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(42.0)),
              elevation: 0.0,
              fillColor: (radioComponents[i] == currentValue)
                  ? const Color(0xFFFECFC3)
                  : const Color(0xFFFFFFFF),
              constraints: BoxConstraints.tightFor(
                width: width,
                height: height,
              ),
            )),
          ));
          //사이 간격 입력받는거 추가하기, onChanged랑 currentValue return 추가하기
        }
        return Row(
            mainAxisAlignment: MainAxisAlignment.center, children: components);
      }),
    );
  }
}
