import 'package:demo_project/screen/house_screen/contentOne_widget.dart';
import 'package:demo_project/screen/house_screen/contentThree_widget.dart';
import 'package:demo_project/screen/house_screen/contentTwo_widget.dart';
import 'package:demo_project/screen/house_screen/slider_widget.dart';
import 'package:flutter/material.dart';

class HouseScreen extends StatefulWidget {
  @override
  _HouseScreenState createState() => _HouseScreenState();
}

class _HouseScreenState extends State<HouseScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agent Zoo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
        elevation: 0,
      ),
      body: _buildBody(),
    );
  }

  ListView _buildBody() {
    return ListView(
      children: <Widget>[
        SliderWidget(),
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ContentOneWidget(),
        ),
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ContentTwoWidget(),
        ),
        SizedBox(
          height: 24,
        ),
        ContentThreeWidget(),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
