part of 'get_all_product_bloc.dart';

@freezed
class GetAllProductState with _$GetAllProductState {
  const factory GetAllProductState.initial() = _Initial;
  const factory GetAllProductState.loading() = _Loading;
  const factory GetAllProductState.loaded(List<Products> products) = _Loaded;
  const factory GetAllProductState.error(String message) = _Error;
}
