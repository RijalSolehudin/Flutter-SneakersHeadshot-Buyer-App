import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_buyer_app/core/constants/variables.dart';
import 'package:ecommerce_buyer_app/data/datasources/auth_local_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/response/auth_response_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasources {
  //Register
  Future<Either<String, String>> register(
      String name, String email, String password) async {
    final url = Uri.parse("${Variables.baseUrlApp}/api/buyer/register");
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    final response = await http.post(url,
        headers: header,
        body: jsonEncode({'name': name, 'email': email, 'password': password}));

    if (response.statusCode == 201) {
      return const Right("Register Berhasil");
    } else {
      return Left(response.body);
    }
  }

  // Login
  Future<Either<String, AuthResponseModel>> login(
      String email, String password) async {
    final url = Uri.parse("${Variables.baseUrlApp}/api/login");
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    final response = await http.post(url,
        headers: header,
        body: jsonEncode({'email': email, 'password': password}));

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return const Left("Login gagal");
    }
  }

  //Logout
  Future<Either<String, String>> logout() async {
    final url = Uri.parse("${Variables.baseUrlApp}/api/logout");
    var authData = await AuthLocalDatasources().getLoginData();
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'bearer ${authData.data!.token}'
    };

    final response = await http.post(url, headers: header);

    if (response.statusCode == 200) {
      await AuthLocalDatasources().removeLoginData();
      return const Right("Logout Berhasil");
    } else {
      return const Left("Logout Gagal!");
    }
  }

  //Update Fcm token
  Future<Either<String, String>> updateFcmToken(String fcmToken) async {
    final url = Uri.parse("${Variables.baseUrlApp}/api/update-fcm-token");
    var authData = await AuthLocalDatasources().getLoginData();
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'bearer ${authData.data!.token}'
    };

    final response = await http.put(url,
        headers: header, body: jsonEncode({'fcm_token': fcmToken}));

    if (response.statusCode == 200) {
      return const Right("Token berhasil diupdate");
    } else {
      return const Left("Gagal mengupdate Token!");
    }
  }
}
