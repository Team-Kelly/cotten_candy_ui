import 'package:cotton_candy_ui/src/color_source.dart';
import 'package:flutter/material.dart';

///
/// ## Candy Timeline
///  - Default styled buton for Cotton Candy UI.
///  - Please read [`README.md`](https://pub.dev/packages/cotton_candy_ui) document to get more detailed information about this widget.
///
class CandyTimeLine extends StatelessWidget {
  /// Indicators to build
  final List<CandyIndicator> children;

  /// Connectors to build
  final CandyConnector connector;

  /// Creates a Timeline widget
  const CandyTimeLine(
      {Key? key, required this.children, required this.connector})
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
          const Expanded(child: SizedBox())
        ],
      );
    }));
  }
}

///
/// ## Candy Indicator
///  - Default styled buton for Cotton Candy UI.
///  - Please read [`README.md`](https://pub.dev/packages/cotton_candy_ui) document to get more detailed information about this widget.
///
class CandyIndicator extends StatelessWidget {
  final Widget? child;
  final Widget? title;
  final Widget? subTitle;
  final double width;
  final double height;
  final Color color;
  final double borderRadius;

  /// Creates a Indicator widget for Timeline
  const CandyIndicator(
      {Key? key,
      this.child,
      this.title,
      this.subTitle,
      this.width = 35,
      this.height = 35,
      this.color = CandyColors.candyPink,
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

class CandyConnector extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  /// Creates a Connector widget for Timeline
  const CandyConnector({
    Key? key,
    this.width = 5,
    this.height = 60,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (_) {
      List<Widget> results = [];

      results.add(
        SizedBox(
          height: width / 2,
        ),
      );

      for (int i = 0; i < (height ~/ width ~/ 2); i++) {
        if (i != 0) {
          results.add(
            SizedBox(
              width: width,
              height: width,
            ),
          );
        }

        results.add(
          Container(
            width: width,
            height: width,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(width),
            ),
          ),
        );
      }

      results.add(
        SizedBox(
          width: width,
          height: width / 2,
        ),
      );

      return Column(
        children: [...results],
      );
    });
  }
}
