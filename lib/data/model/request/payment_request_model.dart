import 'dart:convert';

class PaymentRequestModel {
  final int addressId;
  final int sellerId;
  final List<Item> items;
  final int shippingCost;
  final String shippingService;
  final String bankVaName;

  PaymentRequestModel({
    required this.addressId,
    required this.sellerId,
    required this.items,
    required this.shippingCost,
    required this.shippingService,
    required this.bankVaName,
  });

  factory PaymentRequestModel.fromJson(String str) =>
      PaymentRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PaymentRequestModel.fromMap(Map<String, dynamic> json) =>
      PaymentRequestModel(
        addressId: json["address_id"],
        sellerId: json["seller_id"],
        items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
        shippingCost: json["shipping_cost"],
        shippingService: json["shipping_service"],
        bankVaName: json["bank_va_name"],
      );

  Map<String, dynamic> toMap() => {
        "address_id": addressId,
        "seller_id": sellerId,
        "items": List<dynamic>.from(items.map((x) => x.toMap())),
        "shipping_cost": shippingCost,
        "shipping_service": shippingService,
        "bank_va_name": bankVaName,
      };
}

class Item {
  final int productId;
  final int quantity;

  Item({
    required this.productId,
    required this.quantity,
  });

  factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        productId: json["product_id"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toMap() => {
        "product_id": productId,
        "quantity": quantity,
      };
}
