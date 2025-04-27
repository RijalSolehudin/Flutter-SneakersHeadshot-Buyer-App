import 'package:dartz/dartz.dart';
import 'package:ecommerce_buyer_app/core/constants/variables.dart';
import 'package:ecommerce_buyer_app/data/datasources/auth_local_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/response/all_products_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/products_response_model.dart';
import 'package:http/http.dart' as http;

class ProductRemoteDatasource {
  Future<Either<String, GetAllProductsResponseModel>>
      getGeneralProducts() async {
    final url = Uri.parse("${Variables.baseUrlApp}/api/buyer/products");
    var authData = await AuthLocalDatasources().getLoginData();
    var header = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "bearer ${authData.data!.token}"
    };

    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(GetAllProductsResponseModel.fromJson(response.body));
    } else {
      return Left("Data tidak berhasil dimuat");
    }
  }

  Future<Either<String, ProductsResponseModel>> getAllProducts(
      int sellerId) async {
    final url = Uri.parse(
        "${Variables.baseUrlApp}/api/buyer/stores/$sellerId/products");
    var authdata = await AuthLocalDatasources().getLoginData();
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'bearer ${authdata.data!.token}'
    };

    final response = await http.get(
      url,
      headers: header,
    );

    if (response.statusCode == 200) {
      return Right(ProductsResponseModel.fromJson(response.body));
    } else {
      return const Left("Gagal memuat produk");
    }
  }
}
