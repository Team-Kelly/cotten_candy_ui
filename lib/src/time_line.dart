import 'package:cotten_candy_ui/src/color_source.dart';
import 'package:flutter/material.dart';

class CandyTimeLine extends StatelessWidget {
  final List<Indicator> children;
  final Connector connector;
  const CandyTimeLine({Key? key, required this.children, required this.connector})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Builder(builder: (context) {
      List<Widget> components = [];
      List<Widget> labels = [];
      components.add(children[0]);
      labels.add(SizedBox(
        height: children[0].height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [SizedBox(child: children[0].title)],
        ),
      ));
      labels.add(SizedBox(
        height: connector.height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [SizedBox(child: children[0].subTitle)],
        ),
      ));

      for (int i = 1; i < children.length; i++) {
        components.add(connector);
        components.add(children[i]);
        labels.add(SizedBox(
          height: children[i].height,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [SizedBox(child: children[i].title)],
          ),
        ));
        labels.add(SizedBox(
          height: connector.height,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [SizedBox(child: children[i].subTitle)],
          ),
        ));
      }
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(children: components),
          const SizedBox(
            width: 10,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start, children: labels),
        ],
      );
    }));
  }
}

class Indicator extends StatelessWidget {
  final Widget? child;
  final Widget? title;
  final Widget? subTitle;
  final double width;
  final double height;
  final Color color;
  final double borderRadius;

  const Indicator(
      {Key? key,
      this.child,
      this.title,
      this.subTitle,
      this.width = 35,
      this.height = 35,
      this.color = candyPink,
      this.borderRadius = 35})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Center(child: child),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(borderRadius)),
    );
  }
}

class Connector extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  const Connector({
    Key? key,
    this.width = 5,
    this.height = 60,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}
