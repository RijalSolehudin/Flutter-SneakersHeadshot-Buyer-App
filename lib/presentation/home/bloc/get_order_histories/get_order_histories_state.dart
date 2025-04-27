part of 'get_order_histories_bloc.dart';

@freezed
class GetOrderHistoriesState with _$GetOrderHistoriesState {
  const factory GetOrderHistoriesState.initial() = _Initial;
  const factory GetOrderHistoriesState.loading() = _Loading;
  const factory GetOrderHistoriesState.loaded(List<OrderHistory> data) =
      _Loaded;
  const factory GetOrderHistoriesState.error(String message) = _Error;
}
