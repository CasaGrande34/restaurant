class ItemCategoryModel {
  final String category;
  final String item;
  final String price;
  final String description;
  final String image;

  ItemCategoryModel({
    required this.category,
    required this.item,
    required this.price,
    required this.description,
    required this.image,
  });

  factory ItemCategoryModel.fromJson(Map<String, dynamic> json) {
    return ItemCategoryModel(
      category: json['0'],
      item: json['1'],
      price: json['3'],
      description: json['2'],
      image: json['4'],
    );
  }
}
