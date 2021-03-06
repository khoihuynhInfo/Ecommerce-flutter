import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class ContentOneWidget extends StatefulWidget {
  @override
  _ContentOneWidgetState createState() => _ContentOneWidgetState();
}

class _ContentOneWidgetState extends State<ContentOneWidget> {
  final Color _shimmerBaseColor = Colors.grey[300];
  final Color _shimmerHighlightColor = Colors.grey[200];

  final imageContentOne =
      'https://images.unsplash.com/photo-1567419179549-0c8219f3c8d7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildContentOne();
  }

  Widget _buildContentOne() {
    return FutureBuilder<bool>(
      future: _getDataBlock1(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Shimmer.fromColors(
            baseColor: _shimmerBaseColor,
            highlightColor: _shimmerHighlightColor,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              height: 130.0,
              width: double.infinity,
              color: Colors.grey,
            ),
          );
        }

        return Container(
          height: 130.0,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: CachedNetworkImage(
                  imageUrl: imageContentOne,
                  placeholder: (context, url) => const AspectRatio(
                    aspectRatio: 1.6,
                    child: BlurHash(hash: 'LEHV6nWB2yk8pyo0adR*.7kCMdnj'),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(color: Colors.black54),
                child: Text(
                  'Almost before me',
                  style: GoogleFonts.rajdhani(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    color: Colors.grey[200],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Future<bool> _getDataBlock1() async {
    await Future.delayed(Duration(seconds: 2));
    return true;
  }
}
