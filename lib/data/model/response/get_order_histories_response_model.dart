import 'dart:convert';

import 'package:ecommerce_buyer_app/data/model/response/address_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/store_response_model.dart';

class GetOrderHistoriesResponseModel {
  final String? status;
  final String? message;
  final List<OrderHistory>? data;

  GetOrderHistoriesResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory GetOrderHistoriesResponseModel.fromJson(String str) =>
      GetOrderHistoriesResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GetOrderHistoriesResponseModel.fromMap(Map<String, dynamic> json) =>
      GetOrderHistoriesResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<OrderHistory>.from(
                json["data"]!.map((x) => OrderHistory.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class OrderHistory {
  final int? id;
  final int? userId;
  final int? addressId;
  final int? sellerId;
  final String? totalPrice;
  final String? shippingPrice;
  final String? grandTotal;
  final String? status;
  final String? paymentVaName;
  final String? paymentNumber;
  final String? shippingService;
  final dynamic shippingNumber;
  final String? transactionNumber;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<OrderItem>? orderItems;
  final Store? seller;
  final Address? address;

  OrderHistory({
    this.id,
    this.userId,
    this.addressId,
    this.sellerId,
    this.totalPrice,
    this.shippingPrice,
    this.grandTotal,
    this.status,
    this.paymentVaName,
    this.paymentNumber,
    this.shippingService,
    this.shippingNumber,
    this.transactionNumber,
    this.createdAt,
    this.updatedAt,
    this.orderItems,
    this.seller,
    this.address,
  });

  factory OrderHistory.fromJson(String str) =>
      OrderHistory.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderHistory.fromMap(Map<String, dynamic> json) => OrderHistory(
        id: json["id"],
        userId: json["user_id"],
        addressId: json["address_id"],
        sellerId: json["seller_id"],
        totalPrice: json["total_price"],
        shippingPrice: json["shipping_price"],
        grandTotal: json["grand_total"],
        status: json["status"],
        paymentVaName: json["payment_va_name"],
        paymentNumber: json["payment_number"],
        shippingService: json["shipping_service"],
        shippingNumber: json["shipping_number"],
        transactionNumber: json["transaction_number"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        orderItems: json["order_items"] == null
            ? []
            : List<OrderItem>.from(
                json["order_items"]!.map((x) => OrderItem.fromMap(x))),
        seller: json["seller"] == null ? null : Store.fromMap(json["seller"]),
        address:
            json["address"] == null ? null : Address.fromMap(json["address"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "address_id": addressId,
        "seller_id": sellerId,
        "total_price": totalPrice,
        "shipping_price": shippingPrice,
        "grand_total": grandTotal,
        "status": status,
        "payment_va_name": paymentVaName,
        "payment_number": paymentNumber,
        "shipping_service": shippingService,
        "shipping_number": shippingNumber,
        "transaction_number": transactionNumber,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "order_items": orderItems == null
            ? []
            : List<dynamic>.from(orderItems!.map((x) => x.toMap())),
        "seller": seller?.toMap(),
      };
}

class OrderItem {
  final int? id;
  final int? orderId;
  final int? productId;
  final String? quantity;
  final String? price;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Product? product;

  OrderItem({
    this.id,
    this.orderId,
    this.productId,
    this.quantity,
    this.price,
    this.createdAt,
    this.updatedAt,
    this.product,
  });

  factory OrderItem.fromJson(String str) => OrderItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderItem.fromMap(Map<String, dynamic> json) => OrderItem(
        id: json["id"],
        orderId: json["order_id"],
        productId: json["product_id"],
        quantity: json["quantity"],
        price: json["price"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        product:
            json["product"] == null ? null : Product.fromMap(json["product"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "order_id": orderId,
        "product_id": productId,
        "quantity": quantity,
        "price": price,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "product": product?.toMap(),
      };
}

class Product {
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

  Product({
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
  });

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
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
      };
}
