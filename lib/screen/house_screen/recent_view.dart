import 'package:demo_project/models/product_item.dart';
import 'package:demo_project/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class RecentWidget extends StatefulWidget {
  @override
  _RecentWidgetState createState() => _RecentWidgetState();
}

class _RecentWidgetState extends State<RecentWidget> {
  ProductList _productItems;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    return FutureBuilder<ProductList>(
      future: _loadProductList(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }
        return Column(
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            ProductListWidget(productItems: snapshot.data),
          ],
        );
      },
    );
  }

  Future<String> _loadProductListAsset() async {
    return await rootBundle.loadString('assets/recent_view.json');
  }

  Future<ProductList> _loadProductList() async {
    try {
      String jsonString = await _loadProductListAsset();
      final jsonResponse = json.decode(jsonString);
      ProductList productItems = ProductList.fromJson(jsonResponse);
      return productItems;
    } catch (e) {
      print(e);
    }
  }
}
