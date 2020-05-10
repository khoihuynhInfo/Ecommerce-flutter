import 'package:flutter/material.dart';
import 'dart:math';

Color generateColor() => Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
double generateWidthBorder() => Random().nextDouble() * 32;
double generateValueMath() => Random().nextDouble() * 3;

double generateWidth() => Random().nextDouble() * 64;
double generateHeight() => Random().nextDouble() * 32;

class AnimationContaierWidget extends StatefulWidget {
  AnimationContaierWidget({
    Key key,
  }) : super(key: key);

  @override
  _AnimationContaierWidgetState createState() =>
      _AnimationContaierWidgetState();
}

class _AnimationContaierWidgetState extends State<AnimationContaierWidget> {
  Color color;
  double borderWidth;
  double valueRandom;
  double width;
  double height;

  // starting
  var _myValue = 0.0;
  // ending
  final _myNewValue = 2.0;

  void initState() {
    color = Colors.deepPurple;
    borderWidth = 1.0;
    valueRandom = 1.0;
    width = 100.0;
    height = 100.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(valueRandom),
              color: color,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(valueRandom, valueRandom),
                  blurRadius: valueRandom,
                  spreadRadius: valueRandom,
                )
              ],
            ),
            width: 200.0 + width,
            height: 200.0 + height,
            transform: Matrix4.rotationZ(
              0.5,
            ),
            child: SomeOtherWidget(),
          ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            child: Text('Update State'),
            onPressed: () {
              change();
            },
          )
        ],
      ),
    );
  }

  void change() {
    setState(() {
      color = generateColor();
      borderWidth = generateWidthBorder();
      valueRandom = generateValueMath();
      width = generateWidth();
      height = generateHeight();
    });
  }
}

class SomeOtherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
    );
  }
}
