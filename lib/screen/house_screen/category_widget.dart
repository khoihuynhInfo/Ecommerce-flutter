import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  final List<Map<String, dynamic>> _categories = [
    {
      "text": "Coat",
      "iconUrl": "/assets/images/icons/coat.png",
    },
    {
      "text": "Hat",
      "iconUrl": "/assets/images/icons/hat.png",
    },
    {
      "text": "Hats",
      "iconUrl": "/assets/images/icons/hats.png",
    },
    {
      "text": "Holidays",
      "iconUrl": "/assets/images/icons/holidays.png",
    },
    {
      "text": "Miscellaneous",
      "iconUrl": "/assets/images/icons/miscellaneous.png",
    },
    {
      "text": "Shoe",
      "iconUrl": "/assets/images/icons/shoe.png",
    },
    {
      "text": "Skirt",
      "iconUrl": "/assets/images/icons/skirt.png",
    },
    {
      "text": "Uniform",
      "iconUrl": "/assets/images/icons/swimsuit.png",
    },
    {
      "text": "Swimsuit",
      "iconUrl": "/assets/images/icons/uniform.png",
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
    return ListView.builder(
      padding: const EdgeInsets.all(15),
      itemCount: _categories.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          child: Center(
            child: Text(_categories[2]['text']),
          ),
        );
      },
    );
  }
}
