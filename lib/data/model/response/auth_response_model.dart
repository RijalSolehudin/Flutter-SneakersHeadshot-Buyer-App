import 'dart:convert';

class AuthResponseModel {
  final String? status;
  final String? message;
  final Data? data;

  AuthResponseModel({
    this.status,
    this.message,
    this.data,
  });

  AuthResponseModel copyWith({
    String? status,
    String? message,
    Data? data,
  }) =>
      AuthResponseModel(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory AuthResponseModel.fromJson(String str) =>
      AuthResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthResponseModel.fromMap(Map<String, dynamic> json) =>
      AuthResponseModel(
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
  final User? user;
  final String? token;

  Data({
    this.user,
    this.token,
  });

  Data copyWith({
    User? user,
    String? token,
  }) =>
      Data(
        user: user ?? this.user,
        token: token ?? this.token,
      );

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        user: json["user"] == null ? null : User.fromMap(json["user"]),
        token: json["token"],
      );

  Map<String, dynamic> toMap() => {
        "user": user?.toMap(),
        "token": token,
      };
}

class User {
  final int? id;
  final String? name;
  final String? email;
  final dynamic emailVerifiedAt;
  final dynamic phone;
  final dynamic address;
  final dynamic country;
  final dynamic province;
  final dynamic city;
  final dynamic district;
  final dynamic postalCode;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? roles;
  final dynamic photo;

  User({
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
  });

  User copyWith({
    int? id,
    String? name,
    String? email,
    dynamic emailVerifiedAt,
    dynamic phone,
    dynamic address,
    dynamic country,
    dynamic province,
    dynamic city,
    dynamic district,
    dynamic postalCode,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? roles,
    dynamic photo,
  }) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
        phone: phone ?? this.phone,
        address: address ?? this.address,
        country: country ?? this.country,
        province: province ?? this.province,
        city: city ?? this.city,
        district: district ?? this.district,
        postalCode: postalCode ?? this.postalCode,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        roles: roles ?? this.roles,
        photo: photo ?? this.photo,
      );

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
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
      };
}
