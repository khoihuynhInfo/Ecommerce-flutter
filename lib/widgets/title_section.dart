import 'package:flutter/material.dart';

class TitleSectionWidget extends StatefulWidget {
  const TitleSectionWidget({Key key, this.titleName}) : super(key: key);
  final titleName;
  @override
  _TitleSectionWidgetState createState() => _TitleSectionWidgetState();
}

class _TitleSectionWidgetState extends State<TitleSectionWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildTitle();
  }

  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 18.0,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              widget.titleName,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Text(
            'See All',
            style: TextStyle(
              fontSize: 16,
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
