part of 'get_general_products_bloc.dart';

@freezed
class GetGeneralProductsEvent with _$GetGeneralProductsEvent {
  const factory GetGeneralProductsEvent.started() = _Started;
  const factory GetGeneralProductsEvent.getGeneralProducts() =
      _GetGeneralProducts;
}
