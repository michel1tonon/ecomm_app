class ComponentModel {

  static const String carouselType = "carousel";
  static const String categoryListType = "categoryList";
  static const String showCaseType = "showCase";

  int id;
  String type;
  String label;
  List children;

  ComponentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    label = json['label'];
    children = json['children'];
  }
}