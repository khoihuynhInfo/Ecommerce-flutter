import 'package:demo_project/models/product_item.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ProductListWidget extends StatefulWidget {
  const ProductListWidget({this.productItems});
  final ProductList productItems;

  @override
  _ProductListWidgetState createState() => _ProductListWidgetState();
}

class _ProductListWidgetState extends State<ProductListWidget> {
  ProductList get _productItems => widget.productItems;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 250,
      child: ListView.builder(
        cacheExtent: 99999999,
        scrollDirection: Axis.horizontal,
        itemCount: _productItems.products.length,
        itemBuilder: (context, index) {
          precacheImage(
            AssetImage(_productItems.products[index].imgUrl),
            context,
          );

          return _buildProductItem(_productItems.products[index]);
        },
      ),
    );
  }

  Widget _buildProductItem(ProducItem item) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 160,
            width: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(item.imgUrl),
                fit: BoxFit.cover,
              ),
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(
                5.0,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            item.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '\$${item.price}',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          _buildRowStar(),
        ],
      ),
    );
  }

  Widget _buildRowStar() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.star,
          size: 13,
          color: Colors.pink,
        ),
        Icon(
          Icons.star,
          size: 13,
          color: Colors.pink,
        ),
        Icon(
          Icons.star,
          size: 13,
          color: Colors.pink,
        ),
        Icon(
          Icons.star_border,
          size: 13,
          color: Colors.pink,
        ),
        Icon(
          Icons.star_border,
          size: 13,
          color: Colors.pink,
        ),
      ],
    );
  }
}
