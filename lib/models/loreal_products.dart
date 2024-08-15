class LorealProducts {
  int? id;
  String? brand;
  String? name;
  String? price;
  String? priceSign;
  String? currency;
  String? imageLink;
  String? productLink;
  String? websiteLink;
  String? description;
  double? rating;
  String? category;
  String? productType;
  List<String>? tagList; // Assuming tagList is a list of strings
  String? createdAt;
  String? updatedAt;
  String? productApiUrl;
  String? apiFeaturedImage;
  List<ProductColors>? productColors;

  LorealProducts({
    this.id,
    this.brand,
    this.name,
    this.price,
    this.priceSign,
    this.currency,
    this.imageLink,
    this.productLink,
    this.websiteLink,
    this.description,
    this.rating,
    this.category,
    this.productType,
    this.tagList,
    this.createdAt,
    this.updatedAt,
    this.productApiUrl,
    this.apiFeaturedImage,
    this.productColors,
  });

  factory LorealProducts.fromJson(Map<String, dynamic> json) {
    return LorealProducts(
      id: json['id'],
      brand: json['brand'],
      name: json['name'],
      price: json['price'],
      priceSign: json['price_sign'],
      currency: json['currency'],
      imageLink: json['image_link'],
      productLink: json['product_link'],
      websiteLink: json['website_link'],
      description: json['description'],
      rating: json['rating']?.toDouble(), // Handle null and convert to double
      category: json['category'],
      productType: json['product_type'],
      tagList: List<String>.from(json['tag_list'] ??
          []), // Handle null and convert to a list of strings
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      productApiUrl: json['product_api_url'],
      apiFeaturedImage: json['api_featured_image'],
      productColors: (json['product_colors'] as List<dynamic>?)
          ?.map((colorJson) => ProductColors.fromJson(colorJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': id,
      'brand': brand,
      'name': name,
      'price': price,
      'price_sign': priceSign,
      'currency': currency,
      'image_link': imageLink,
      'product_link': productLink,
      'website_link': websiteLink,
      'description': description,
      'rating': rating,
      'category': category,
      'product_type': productType,
      'tag_list': tagList,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'product_api_url': productApiUrl,
      'api_featured_image': apiFeaturedImage,
      'product_colors': productColors?.map((color) => color.toJson()).toList(),
    };
    // Remove null entries from the map
    data.removeWhere((key, value) => value == null);
    return data;
  }
}

class ProductColors {
  String? hexValue;
  String? colourName;

  ProductColors({this.hexValue, this.colourName});

  factory ProductColors.fromJson(Map<String, dynamic> json) {
    return ProductColors(
      hexValue: json['hex_value'],
      colourName: json['colour_name'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'hex_value': hexValue,
      'colour_name': colourName,
    };
    // Remove null entries from the map
    data.removeWhere((key, value) => value == null);
    return data;
  }
}
