import 'dart:convert';

class PaymentResponseModel {
  final String? status;
  final String? message;
  final Data? data;

  PaymentResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory PaymentResponseModel.fromJson(String str) =>
      PaymentResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PaymentResponseModel.fromMap(Map<String, dynamic> json) =>
      PaymentResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data?.toMap(),
      };
}

class Data {
  final int? userId;
  final int? addressId;
  final int? sellerId;
  final int? totalPrice;
  final int? shippingPrice;
  final String? shippingService;
  final int? grandTotal;
  final String? status;
  final String? transactionNumber;
  final String? paymentVaName;
  final DateTime? updatedAt;
  final DateTime? createdAt;
  final int? id;
  final String? paymentNumber;
  final List<OrderItem>? orderItems;
  final Seller? seller;

  Data({
    this.userId,
    this.addressId,
    this.sellerId,
    this.totalPrice,
    this.shippingPrice,
    this.shippingService,
    this.grandTotal,
    this.status,
    this.transactionNumber,
    this.paymentVaName,
    this.updatedAt,
    this.createdAt,
    this.id,
    this.paymentNumber,
    this.orderItems,
    this.seller,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        userId: json["user_id"],
        addressId: json["address_id"],
        sellerId: json["seller_id"],
        totalPrice: json["total_price"],
        shippingPrice: json["shipping_price"],
        shippingService: json["shipping_service"],
        grandTotal: json["grand_total"],
        status: json["status"],
        transactionNumber: json["transaction_number"],
        paymentVaName: json["payment_va_name"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"],
        paymentNumber: json["payment_number"],
        orderItems: json["order_items"] == null
            ? []
            : List<OrderItem>.from(
                json["order_items"]!.map((x) => OrderItem.fromMap(x))),
        seller: json["seller"] == null ? null : Seller.fromMap(json["seller"]),
      );

  Map<String, dynamic> toMap() => {
        "user_id": userId,
        "address_id": addressId,
        "seller_id": sellerId,
        "total_price": totalPrice,
        "shipping_price": shippingPrice,
        "shipping_service": shippingService,
        "grand_total": grandTotal,
        "status": status,
        "transaction_number": transactionNumber,
        "payment_va_name": paymentVaName,
        "updated_at": updatedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "id": id,
        "payment_number": paymentNumber,
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

class Seller {
  final int? id;
  final String? name;
  final String? email;
  final dynamic emailVerifiedAt;
  final String? phone;
  final String? address;
  final String? country;
  final String? province;
  final String? city;
  final String? district;
  final String? postalCode;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? roles;
  final String? photo;
  final int? isLivestreaming;

  Seller({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.phone,
    this.address,
    this.country,
    this.province,
    this.city,
    this.district,
    this.postalCode,
    this.createdAt,
    this.updatedAt,
    this.roles,
    this.photo,
    this.isLivestreaming,
  });

  factory Seller.fromJson(String str) => Seller.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Seller.fromMap(Map<String, dynamic> json) => Seller(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        phone: json["phone"],
        address: json["address"],
        country: json["country"],
        province: json["province"],
        city: json["city"],
        district: json["district"],
        postalCode: json["postal_code"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        roles: json["roles"],
        photo: json["photo"],
        isLivestreaming: json["is_livestreaming"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "phone": phone,
        "address": address,
        "country": country,
        "province": province,
        "city": city,
        "district": district,
        "postal_code": postalCode,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "roles": roles,
        "photo": photo,
        "is_livestreaming": isLivestreaming,
      };
}
