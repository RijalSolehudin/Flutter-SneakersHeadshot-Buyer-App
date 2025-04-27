import 'dart:convert';

class AddressesResponseModel {
  final String? status;
  final String? meesage;
  final List<Address>? data;

  AddressesResponseModel({
    this.status,
    this.meesage,
    this.data,
  });

  factory AddressesResponseModel.fromJson(String str) =>
      AddressesResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddressesResponseModel.fromMap(Map<String, dynamic> json) =>
      AddressesResponseModel(
        status: json["status"],
        meesage: json["meesage"],
        data: json["data"] == null
            ? []
            : List<Address>.from(json["data"]!.map((x) => Address.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "meesage": meesage,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Address {
  final int? id;
  final int? userId;
  final String? receiverName;
  final String? country;
  final String? province;
  final String? city;
  final String? district;
  final String? postalCode;
  final String? address;
  final int? isDefault;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Address({
    this.id,
    this.userId,
    this.receiverName,
    this.country,
    this.province,
    this.city,
    this.district,
    this.postalCode,
    this.address,
    this.isDefault,
    this.createdAt,
    this.updatedAt,
  });

  factory Address.fromJson(String str) => Address.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Address.fromMap(Map<String, dynamic> json) => Address(
        id: json["id"],
        userId: json["user_id"],
        receiverName: json["receiver_name"],
        country: json["country"],
        province: json["province"],
        city: json["city"],
        district: json["district"],
        postalCode: json["postal_code"],
        address: json["address"],
        isDefault: json["is_default"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "receiver_name": receiverName,
        "country": country,
        "province": province,
        "city": city,
        "district": district,
        "postal_code": postalCode,
        "address": address,
        "is_default": isDefault,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
