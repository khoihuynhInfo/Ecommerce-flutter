class ProducItem {
  const ProducItem({
    this.id,
    this.imgUrl,
    this.name,
    this.percenDiscount,
    this.price,
    this.defaultQualityStar,
    this.percentStar,
  });

  final String id;
  final String imgUrl;
  final String name;
  final String percenDiscount;
  final String price;
  final String defaultQualityStar;
  final String percentStar;

  factory ProducItem.fromJson(Map<String, dynamic> json) {
    return new ProducItem(
      id: json['id'],
      imgUrl: json['imgUrl'],
      name: json['name'],
      percenDiscount: json['percenDiscount'],
      price: json['price'],
      defaultQualityStar: json['defaultQualityStar'],
      percentStar: json['percentStar'],
    );
  }
}

class ProductList {
  const ProductList({
    this.products,
  });
  final List<ProducItem> products;

  factory ProductList.fromJson(List<dynamic> parsedJson) {
    List<ProducItem> productItems =
        parsedJson.map((i) => ProducItem.fromJson(i)).toList();
    return new ProductList(
      products: productItems,
    );
  }
}
