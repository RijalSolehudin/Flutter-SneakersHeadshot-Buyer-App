import 'dart:convert';

import 'package:ecommerce_buyer_app/data/model/response/store_response_model.dart';

class GetAllProductsResponseModel {
  final String? status;
  final String? message;
  final List<GeneralProducts>? data;

  GetAllProductsResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory GetAllProductsResponseModel.fromJson(String str) =>
      GetAllProductsResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GetAllProductsResponseModel.fromMap(Map<String, dynamic> json) =>
      GetAllProductsResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<GeneralProducts>.from(
                json["data"]!.map((x) => GeneralProducts.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class GeneralProducts {
  final int? id;
  final int? sellerId;
  final int? categoryId;
  final String? name;
  final String? description;
  final String? price;
  final int? stock;
  final String? image;
  final int? isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Store? seller;
  final Category? category;

  GeneralProducts({
    this.id,
    this.sellerId,
    this.categoryId,
    this.name,
    this.description,
    this.price,
    this.stock,
    this.image,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    this.seller,
    this.category,
  });

  factory GeneralProducts.fromJson(String str) =>
      GeneralProducts.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GeneralProducts.fromMap(Map<String, dynamic> json) => GeneralProducts(
        id: json["id"],
        sellerId: json["seller_id"],
        categoryId: json["category_id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
        image: json["image"],
        isActive: json["is_active"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        seller: json["seller"] == null ? null : Store.fromMap(json["seller"]),
        category: json["category"] == null
            ? null
            : Category.fromMap(json["category"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "seller_id": sellerId,
        "category_id": categoryId,
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
        "image": image,
        "is_active": isActive,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "seller": seller?.toMap(),
        "category": category?.toMap(),
      };
}

class Category {
  final int? id;
  final int? sellerId;
  final String? name;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Category({
    this.id,
    this.sellerId,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json["id"],
        sellerId: json["seller_id"],
        name: json["name"],
        description: json["description"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "seller_id": sellerId,
        "name": name,
        "description": description,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
