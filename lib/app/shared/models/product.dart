class ProductModel {
  String description;
  String thumbnail;
  double price;

  ProductModel.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    thumbnail = json['thumbnail'];
    price = json['price'];
  }
}