class ProductModel {
  int id;
  String description;
  String completeDetails;
  double price;

  List images;
  String thumbnail;

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    thumbnail = json['thumbnail'];
    images = json['images'] ?? [thumbnail];
    completeDetails = json['completeDetails'];
    price = json['price'];
  }
}