import 'package:flutter/material.dart';

class NoteTextWidget extends StatefulWidget {
  const NoteTextWidget({
    this.text,
  });
  final String text;

  @override
  _NoteTextWidgetState createState() {
    return _NoteTextWidgetState();
  }
}

class _NoteTextWidgetState extends State<NoteTextWidget> {
  String get strContent => widget.text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.all(
          Radius.circular(2.0),
        ),
      ),
      child: _buildContentNote(),
    );
  }

  Widget _buildContentNote() {
    final TextStyle textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );

    return Text(
      strContent,
      style: textStyle,
      textAlign: TextAlign.center,
    );
  }
}
