part of 'get_all_store_bloc.dart';

@freezed
class GetAllStoreEvent with _$GetAllStoreEvent {
  const factory GetAllStoreEvent.started() = _Started;
  const factory GetAllStoreEvent.getAllStore() = _getAllStore;
}
