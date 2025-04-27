import 'package:dartz/dartz.dart';
import 'package:ecommerce_buyer_app/core/constants/variables.dart';
import 'package:ecommerce_buyer_app/data/datasources/auth_local_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/response/store_response_model.dart';
import 'package:http/http.dart' as http;

class StoreRemoteDatasources {
  //Get All Stores
  Future<Either<String, StoreResponseModel>> getAllStore() async {
    final url = Uri.parse("${Variables.baseUrlApp}/api/buyer/stores");
    var authData = await AuthLocalDatasources().getLoginData();
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'bearer ${authData.data!.token}'
    };

    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(StoreResponseModel.fromJson(response.body));
    } else {
      return const Left("Gagal memuat data");
    }
  }

  // Get All Streaming Stores
  Future<Either<String, StoreResponseModel>> getAllStreamingStores() async {
    final url =
        Uri.parse("${Variables.baseUrlApp}/api/buyer/stores/livestreaming");
    var authData = await AuthLocalDatasources().getLoginData();
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'bearer ${authData.data!.token}'
    };

    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(StoreResponseModel.fromJson(response.body));
    } else {
      return const Left("Gagal memuat data");
    }
  }
}
