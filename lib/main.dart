import 'package:bmi_calculator/slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Body Mass Index',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  double height = 0;
  double weight = 0;
  late Function(double) onselect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text("Height"),
              HeightCircularSlider(100, 200, 'Height'),
            ],
          ),
          Column(
            children: [
              Text("Weight"),
              WeightCircularSlider(10, 200, 'Weight'),
            ],
          ),
        ],
      ),
    );
  }
}
