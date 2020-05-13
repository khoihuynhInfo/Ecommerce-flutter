import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:shimmer/shimmer.dart';

class ContentThreeWidget extends StatefulWidget {
  @override
  _ContentThreeWidgetState createState() => _ContentThreeWidgetState();
}

class _ContentThreeWidgetState extends State<ContentThreeWidget> {
  final Color _shimmerBaseColor = Colors.grey[300];
  final Color _shimmerHighlightColor = Colors.grey[200];

  final String img1 =
      'https://images.unsplash.com/photo-1564086999728-a1818902366b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80';

  final String img2 =
      'https://images.unsplash.com/photo-1582734109990-9748d875a40c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildContentThree();
  }

  Widget _buildContentThree() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: _buildThreeLeft(),
          ),
          SizedBox(
            width: 14,
          ),
          Expanded(
            child: _buildThreeRight(),
          )
        ],
      ),
    );
  }

  Widget _buildThreeLeft() {
    return FutureBuilder<bool>(
      future: _getDataBlock31(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return skeletonThree();
        }
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[200],
            ),
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(
              5.0,
            ),
          ),
          height: 200,
          child: FadeInImage.assetNetwork(
            placeholder: '',
            image: img1,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  Widget _buildThreeRight() {
    return FutureBuilder<bool>(
      future: _getDataBlock32(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return skeletonThree();
        }

        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[200],
            ),
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(
              5.0,
            ),
          ),
          height: 200,
          child: FadeInImage.assetNetwork(
            placeholder: '',
            image: img2,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  Widget skeletonThree() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300],
      highlightColor: Colors.grey[100],
      child: Container(
        height: 200,
        color: _shimmerBaseColor,
      ),
    );
  }

  Future<bool> _getDataBlock31() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  Future<bool> _getDataBlock32() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }
}
