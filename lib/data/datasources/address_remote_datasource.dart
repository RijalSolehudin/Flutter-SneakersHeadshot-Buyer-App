import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_buyer_app/core/constants/variables.dart';
import 'package:ecommerce_buyer_app/data/datasources/auth_local_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/request/address_request_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/address_response_model.dart';
import 'package:http/http.dart' as http;

class AddressRemoteDatasource {
  //Create Address
  Future<Either<String, String>> addAddress(AddressesRequestModel data) async {
    final url = Uri.parse("${Variables.baseUrlApp}/api/buyer/addresses");
    var authData = await AuthLocalDatasources().getLoginData();
    final header = {
      "Accept": "application/json",
      'Authorization': "bearer ${authData.data!.token}"
    };

    final response = await http.post(url, headers: header, body: data.toMap());

    if (response.statusCode == 201) {
      return const Right("Alamat Berhasil Ditambahkan");
    } else {
      return const Left("Gagal menambahkan alamat");
    }
  }

  //Update Address
  Future<Either<String, String>> updateAddress(
      AddressesRequestModel data, int id) async {
    final url = Uri.parse("${Variables.baseUrlApp}/api/buyer/addresses/$id");
    var authData = await AuthLocalDatasources().getLoginData();
    final header = {
      "Accept": "application/json",
      'Authorization': "bearer ${authData.data!.token}"
    };

    final response = await http.put(url, headers: header, body: data.toMap());

    if (response.statusCode == 201) {
      return const Right("Alamat Berhasil Diubah");
    } else {
      return const Left("Gagal mengubah alamat");
    }
  }

  //Get Address
  Future<Either<String, AddressesResponseModel>> getAddress() async {
    final url = Uri.parse("${Variables.baseUrlApp}/api/buyer/addresses");
    var authData = await AuthLocalDatasources().getLoginData();
    final header = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      'Authorization': "bearer ${authData.data!.token}"
    };

    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(AddressesResponseModel.fromJson(response.body));
    } else {
      return const Left("Gagal memuat alamat");
    }
  }
}
