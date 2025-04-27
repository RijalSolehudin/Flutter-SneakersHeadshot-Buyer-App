import 'dart:convert';

class AddressesRequestModel {
  final String? receiverName;
  final String? phoneNumber;
  final String? country;
  final String? province;
  final String? city;
  final String? district;
  final String? postalCode;
  final String? address;
  // final bool isDefault;

  AddressesRequestModel({
    this.receiverName,
    this.phoneNumber,
    this.country,
    this.province,
    this.city,
    this.district,
    this.postalCode,
    this.address,
    // required this.isDefault,
  });

  factory AddressesRequestModel.fromJson(String str) =>
      AddressesRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddressesRequestModel.fromMap(Map<String, dynamic> json) =>
      AddressesRequestModel(
        receiverName: json["receiver_name"],
        phoneNumber: json["phone_number"],
        country: json["country"],
        province: json["province"],
        city: json["city"],
        district: json["district"],
        postalCode: json["postal_code"],
        address: json["address"],
        // isDefault: json["is_default"],
      );

  Map<String, dynamic> toMap() => {
        "receiver_name": receiverName,
        "phone_number": phoneNumber,
        "country": country,
        "province": province,
        "city": city,
        "district": district,
        "postal_code": postalCode,
        "address": address,
        // "is_default": isDefault,
      };
}
