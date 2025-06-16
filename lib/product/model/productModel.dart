class ProductModel {
  final int id;
  final String name;
  final String category;
  final double price;
  final double discountPrice;
  final String description;
  final double rating;
  final int reviews;
  final String image;
  final List<String> gallery;
  final List<String> availableColors;
  final List<String> availableSizes;
  final int stock;
  final bool isFavourite;

  ProductModel({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.discountPrice,
    required this.description,
    required this.rating,
    required this.reviews,
    required this.image,
    required this.gallery,
    required this.availableColors,
    required this.availableSizes,
    required this.stock,
    required this.isFavourite,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json['id'],
    name: json['name'],
    category: json['category'],
    price: json['price'].toDouble(),
    discountPrice: json['discountPrice'].toDouble(),
    description: json['description'],
    rating: json['rating'].toDouble(),
    reviews: json['reviews'],
    image: json['image'],
    gallery: List<String>.from(json['gallery']),
    availableColors: List<String>.from(json['availableColors']),
    availableSizes: List<String>.from(json['availableSizes']),
    stock: json['stock'],
    isFavourite: json['isFavourite'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'category': category,
    'price': price,
    'discountPrice': discountPrice,
    'description': description,
    'rating': rating,
    'reviews': reviews,
    'image': image,
    'gallery': gallery,
    'availableColors': availableColors,
    'availableSizes': availableSizes,
    'stock': stock,
    'isFavourite': isFavourite,
  };

  ProductModel copyWith({
    int? id,
    String? name,
    String? category,
    double? price,
    double? discountPrice,
    String? description,
    double? rating,
    int? reviews,
    String? image,
    List<String>? gallery,
    List<String>? availableColors,
    List<String>? availableSizes,
    int? stock,
    bool? isFavourite,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      price: price ?? this.price,
      discountPrice: discountPrice ?? this.discountPrice,
      description: description ?? this.description,
      rating: rating ?? this.rating,
      reviews: reviews ?? this.reviews,
      image: image ?? this.image,
      gallery: gallery ?? this.gallery,
      availableColors: availableColors ?? this.availableColors,
      availableSizes: availableSizes ?? this.availableSizes,
      stock: stock ?? this.stock,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }
}
