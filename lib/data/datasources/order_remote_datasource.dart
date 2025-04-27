import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_buyer_app/core/constants/variables.dart';
import 'package:ecommerce_buyer_app/data/datasources/auth_local_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/request/payment_request_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/get_order_histories_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/payment_response_model.dart';
import 'package:http/http.dart' as http;

class OrderRemoteDatasource {
  //Payment VA Number Request
  Future<Either<String, PaymentResponseModel>> getPaymentVaNumber(
      PaymentRequestModel data) async {
    final url = Uri.parse("${Variables.baseUrlApp}/api/buyer/orders");
    var authData = await AuthLocalDatasources().getLoginData();
    final header = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "bearer ${authData.data!.token}"
    };

    final response =
        await http.post(url, headers: header, body: jsonEncode(data.toMap()));

    if (response.statusCode == 201) {
      return Right(PaymentResponseModel.fromJson(response.body));
    } else {
      return const Left("Gagal memuat data");
    }
  }

  //Payment Status
  Future<Either<String, String>> getPayment(int id) async {
    final url =
        Uri.parse("${Variables.baseUrlApp}/api/buyer/orders/$id/status");
    var authData = await AuthLocalDatasources().getLoginData();
    final header = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "bearer ${authData.data!.token}"
    };

    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(jsonDecode(response.body)['status']);
    } else {
      return const Left("Gagal memuat data");
    }
  }

  //Get Order Histories

  Future<Either<String, GetOrderHistoriesResponseModel>>
      getOrderHistories() async {
    final url = Uri.parse('${Variables.baseUrlApp}/api/buyer/orders/history');

    var authData = await AuthLocalDatasources().getLoginData();
    final header = {
      'Accept': 'application/json',
      'Content-type': 'application/json',
      'Authorization': 'bearer ${authData.data!.token}'
    };

    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(GetOrderHistoriesResponseModel.fromJson(response.body));
    } else {
      return const Left("Gagal memuat Data");
    }
  }
}
