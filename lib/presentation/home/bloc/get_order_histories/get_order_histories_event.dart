part of 'get_order_histories_bloc.dart';

@freezed
class GetOrderHistoriesEvent with _$GetOrderHistoriesEvent {
  const factory GetOrderHistoriesEvent.started() = _Started;
  const factory GetOrderHistoriesEvent.getOrderHistories() = _GetOrderHistories;
}
