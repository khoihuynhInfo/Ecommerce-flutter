import 'package:flutter/material.dart';

class CycleButtonWidget extends StatefulWidget {
  const CycleButtonWidget({
    this.color,
    this.onPress,
  });
  final Function onPress;
  final Color color;

  @override
  _CycleButtonWidgetState createState() {
    return _CycleButtonWidgetState();
  }
}

class _CycleButtonWidgetState extends State<CycleButtonWidget> {
  Color get colorOutSide => widget.color;
  Function get onPress => widget.onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: colorOutSide,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(100.0),
          ),
        ),
        padding: EdgeInsets.all(4),
        child: RaisedButton(
          color: colorOutSide,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(100.0),
            ),
          ),
          onPressed: onPress,
          child: Text(''),
        ),
      ),
    );
  }
}
