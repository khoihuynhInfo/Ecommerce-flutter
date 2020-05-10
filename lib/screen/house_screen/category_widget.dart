import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatefulWidget {
  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  final List<Map<String, dynamic>> categories = [
    {
      "text": "Coat",
      "iconUrl": "assets/images/icons/coat.png",
    },
    {
      "text": "Hat",
      "iconUrl": "assets/images/icons/hat.png",
    },
    {
      "text": "Hats",
      "iconUrl": "assets/images/icons/hats.png",
    },
    {
      "text": "Holidays",
      "iconUrl": "assets/images/icons/holidays.png",
    },
    {
      "text": "Miscellaneous",
      "iconUrl": "assets/images/icons/miscellaneous.png",
    },
    {
      "text": "Shoe",
      "iconUrl": "assets/images/icons/shoe.png",
    },
    {
      "text": "Skirt",
      "iconUrl": "assets/images/icons/skirt.png",
    },
    {
      "text": "Uniform",
      "iconUrl": "assets/images/icons/swimsuit.png",
    },
    {
      "text": "Swimsuit",
      "iconUrl": "assets/images/icons/uniform.png",
    }
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildCategoryList(context);
  }

  Widget _buildCategoryList(context) {
    return Container(
      height: 85,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categories.map((category) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: <Widget>[
                Container(
                  child: FittedBox(
                    child: Image.asset(
                      category['iconUrl'],
                      width: 50,
                      height: 50,
                    ),
                    fit: BoxFit.cover,
                  ),
                  padding: EdgeInsets.all(10),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    backgroundBlendMode: BlendMode.hardLight,
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.pink[50],
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  category['text'],
                  style: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
