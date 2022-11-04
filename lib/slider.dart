import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class WeightCircularSlider extends StatefulWidget {
  double initialvalue;
  double finalvalue;
  String txt;

  WeightCircularSlider(this.initialvalue, this.finalvalue, this.txt);

  @override
  State<WeightCircularSlider> createState() => _WeightCircularSliderState();
}

class _WeightCircularSliderState extends State<WeightCircularSlider> {
  String unit = 'cms';

  @override
  Widget build(BuildContext context) {
    if (widget.txt == 'Height') {
      unit = 'cms';
    } else {
      unit = 'kgs';
    }
    return Container(
      padding: EdgeInsets.all(10),
      child: SleekCircularSlider(
        appearance: CircularSliderAppearance(
          infoProperties: InfoProperties(topLabelText: widget.txt),
        ),
        innerWidget: (value) {
          var fvalue = double.parse(value.toStringAsFixed(2));
          onChange:
          (double value) {
            setState(() {});
          };
          return Container(
            child: Center(child: Text(" $fvalue $unit")),
          );
        },
        initialValue: 150,
        min: widget.initialvalue,
        max: widget.finalvalue,
        onChange: (double value) {},
      ),
    );
    ;
  }
}

class HeightCircularSlider extends StatefulWidget {
  double initialvalue;
  double finalvalue;
  String txt;

  HeightCircularSlider(this.initialvalue, this.finalvalue, this.txt);

  @override
  State<HeightCircularSlider> createState() => _HeightCircularSliderState();
}

class _HeightCircularSliderState extends State<HeightCircularSlider> {
  String unit = 'cms';

  @override
  Widget build(BuildContext context) {
    if (widget.txt == 'Height') {
      unit = 'cms';
    } else {
      unit = 'kgs';
    }
    return Container(
      padding: EdgeInsets.all(10),
      child: SleekCircularSlider(
        appearance: CircularSliderAppearance(
          infoProperties: InfoProperties(topLabelText: widget.txt),
        ),
        innerWidget: (value) {
          var fvalue = double.parse(value.toStringAsFixed(2));
          onChange:
          (double value) {
            setState(() {
              Show(
                height: value,
              );
            });
          };
          return Container(
            child: Center(child: Text(" $fvalue $unit")),
          );
        },
        initialValue: 150,
        min: widget.initialvalue,
        max: widget.finalvalue,
        onChange: (value) {},
      ),
    );
    ;
  }
}

class Show extends StatelessWidget {
  double height;
  double weight;

  Show({this.height = 0, this.weight = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(height.toString()),
    );
  }
}
