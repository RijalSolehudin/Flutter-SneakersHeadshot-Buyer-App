part of 'get_general_products_bloc.dart';

@freezed
class GetGeneralProductsState with _$GetGeneralProductsState {
  const factory GetGeneralProductsState.initial() = _Initial;
  const factory GetGeneralProductsState.loading() = _Loading;
  const factory GetGeneralProductsState.loaded(List<GeneralProducts> data) =
      _Loaded;
  const factory GetGeneralProductsState.error(String message) = _Error;
}
