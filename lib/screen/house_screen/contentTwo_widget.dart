import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class ContentTwoWidget extends StatefulWidget {
  @override
  _ContentTwoWidgetState createState() => _ContentTwoWidgetState();
}

class _ContentTwoWidgetState extends State<ContentTwoWidget> {
  final Color _shimmerBaseColor = Colors.grey[300];
  final Color _shimmerHighlightColor = Colors.grey[200];

  final String imageContentTwo =
      'https://images.unsplash.com/photo-1571348635303-dabc89cff3be?ixlib=rb-1.2.1&auto=format&fit=crop&w=358&q=80';
  final String text = 'Almost before me';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildContentTwo();
  }

  Widget _buildContentTwo() {
    return FutureBuilder<bool>(
      future: _getDataBlock2(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Shimmer.fromColors(
            baseColor: _shimmerBaseColor,
            highlightColor: _shimmerHighlightColor,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              height: 150.0,
              width: double.infinity,
              color: Colors.grey,
            ),
          );
        }

        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[200],
            ),
          ),
          height: 150.0,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: CachedNetworkImage(
                  imageUrl: imageContentTwo,
                  placeholder: (context, url) => const AspectRatio(
                    aspectRatio: 1.6,
                    child: BlurHash(hash: 'LEHV6nWB2yk8pyo0adR*.7kCMdnj'),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              // Container(
              //   decoration: BoxDecoration(
              //       border: Border.all(
              //         color: Colors.grey[200],
              //       ),
              //       color: Colors.black54),
              //   padding: EdgeInsets.symmetric(horizontal: 16),
              //   child: Text(
              //     text,
              //     style: GoogleFonts.rajdhani(
              //       fontWeight: FontWeight.w400,
              //       fontSize: 25,
              //       color: Colors.grey[200],
              //     ),
              //   ),
              // )
            ],
          ),
        );
      },
    );
  }

  Future<bool> _getDataBlock2() async {
    await Future.delayed(Duration(seconds: 2));
    return true;
  }
}
