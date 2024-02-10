class CategoryModel {
  final String id;
  final String name;
  final String image;
  final int v;

  CategoryModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.v});

  factory CategoryModel.fromJson(jsonData) {
    return CategoryModel(
        id: jsonData['_id'],
        name: jsonData['name'],
        image: jsonData['image'],
        v: jsonData['__v']);
  }
}
