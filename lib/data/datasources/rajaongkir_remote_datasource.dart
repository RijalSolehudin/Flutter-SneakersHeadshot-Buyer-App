import 'package:dartz/dartz.dart';
import 'package:ecommerce_buyer_app/core/constants/variables.dart';
import 'package:ecommerce_buyer_app/data/model/response/cost_estimation_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/waybill_response_model.dart';
import 'package:http/http.dart' as http;

import '../model/response/city_response_model.dart';
import '../model/response/province_response_model.dart';
import '../model/response/subdistrict_response_model.dart';

class RajaongkirRemoteDatasource {
  //    GET LIST PROVINCE
  Future<Either<String, ProvinceResponseModel>> getProvince() async {
    final url = Uri.parse(
        "${Variables.rajaOngkirBaseUrl}/province?key=${Variables.rajaOngkirApiKey}");

    final response =
        await http.get(url, headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      return Right(ProvinceResponseModel.fromJson(response.body));
    } else {
      return const Left("Loading Failed");
    }
  }

  //    GET LIST CITY
  Future<Either<String, CityResponseModel>> getCity(int provinceId) async {
    final url = Uri.parse(
        "${Variables.rajaOngkirBaseUrl}/city?key=${Variables.rajaOngkirApiKey}&province=$provinceId");

    final response =
        await http.get(url, headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      return Right(CityResponseModel.fromJson(response.body));
    } else {
      return const Left("Loading Failed");
    }
  }

  //  GET LIST SUBDISTRICT
  Future<Either<String, SubdistrictResponseModel>> getSubdistrict(
      int cityId) async {
    final url = Uri.parse(
        "${Variables.rajaOngkirBaseUrl}/subdistrict?key=${Variables.rajaOngkirApiKey}&city=$cityId");

    final response =
        await http.get(url, headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      return Right(SubdistrictResponseModel.fromJson(response.body));
    } else {
      return const Left("Loading Failed");
    }
  }

  //Cost Estimation

  Future<Either<String, CostEstimationResponseModel>> costEstimation(
      String origin, String destination, String weight, String courier) async {
    final url = Uri.parse("https://pro.rajaongkir.com/api/cost");
    var header = {"key": Variables.rajaOngkirApiKey};

    final response = await http.post(url, headers: header, body: {
      'origin': origin,
      'originType': 'subdistrict',
      'destination': destination,
      'destinationType': 'subdistrict',
      'weight': weight,
      'courier': courier
    });

    if (response.statusCode == 200) {
      return Right(CostEstimationResponseModel.fromJson(response.body));
    } else {
      return const Left("Gagal memuat Data");
    }
  }

  // Waybill
  Future<Either<String, WaybillResponseModel>> waybill(
      String noResi, String courier) async {
    final url = Uri.parse("https://pro.rajaongkir.com/api/waybill");
    var header = {"key": Variables.rajaOngkirApiKey};

    final response = await http.post(url,
        headers: header,
        body: {'waybill': noResi, 'courier': courier.toLowerCase()});

    if (response.statusCode == 200) {
      return Right(WaybillResponseModel.fromJson(response.body));
    } else {
      return const Left("Gagal memuat Data");
    }
  }
}
