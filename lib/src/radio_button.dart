import 'package:flutter/material.dart';

class DefaultRadioButton extends StatefulWidget {
  final Function(String?)? onChanged;
  final List<String> radioComponents;
  final double width;
  final double height;
  final double interval;
  final Color textColor;
  final Color pressedTextColor;
  final Color buttonColor;
  final Color pressedButtonColor;
  final double borderRadius;
  final double elevation;

  const DefaultRadioButton(
      {Key? key,
      required this.onChanged,
      required this.radioComponents,
      this.width = 100,
      this.height = 35,
      this.interval = 20,
      this.textColor = const Color(0xFFD8D8D8),
      this.pressedTextColor = Colors.black,
      this.buttonColor = const Color(0xFFFFFFFF),
      this.pressedButtonColor = const Color(0xFFFECFC3),
      this.borderRadius = 42,
      this.elevation = 0})
      : super(key: key);

  @override
  _DefaultRadioButtonState createState() => _DefaultRadioButtonState();
}

class _DefaultRadioButtonState extends State<DefaultRadioButton> {
  String? currentValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: widget.height,width:widget.width*widget.radioComponents.length+widget.interval*(widget.radioComponents.length),
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
                          ? widget.pressedTextColor
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
                  ? widget.pressedButtonColor
                  : widget.buttonColor,
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
