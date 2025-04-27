import 'dart:convert';

import 'package:ecommerce_buyer_app/data/model/response/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasources {
  Future<void> saveLoginData(AuthResponseModel data) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString('auth_data', data.toJson());
  }

  Future<AuthResponseModel> getLoginData() async {
    final pref = await SharedPreferences.getInstance();
    final data = pref.getString('auth_data');
    return AuthResponseModel.fromJson(data!);
  }

  Future<bool> isLoggedIn() async {
    final pref = await SharedPreferences.getInstance();
    return pref.containsKey('auth_data');
  }

  Future<void> removeLoginData() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove('auth_data');
  }

  Future<void> reSaveLoginData(User user) async {
    final pref = await SharedPreferences.getInstance();
    final data = pref.getString('auth_data');
    AuthResponseModel authResponseModel =
        AuthResponseModel.fromMap(jsonDecode(data!));
    final newData = authResponseModel.copyWith(
        data: authResponseModel.data!.copyWith(user: user));
    await pref.setString('auth_data', newData.toJson());
  }
}
