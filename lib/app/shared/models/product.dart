class ProductModel {
  int id;
  String description;
  String thumbnail;
  double price;

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    thumbnail = json['thumbnail'];
    price = json['price'];
  }
}