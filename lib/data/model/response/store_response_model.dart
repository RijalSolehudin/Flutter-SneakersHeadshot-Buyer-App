import 'dart:convert';

class StoreResponseModel {
  final String? status;
  final String? message;
  final List<Store>? data;

  StoreResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory StoreResponseModel.fromJson(String str) =>
      StoreResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StoreResponseModel.fromMap(Map<String, dynamic> json) =>
      StoreResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Store>.from(json["data"]!.map((x) => Store.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Store {
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

  Store({
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

  factory Store.fromJson(String str) => Store.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Store.fromMap(Map<String, dynamic> json) => Store(
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
