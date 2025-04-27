part of 'get_all_store_bloc.dart';

@freezed
class GetAllStoreState with _$GetAllStoreState {
  const factory GetAllStoreState.initial() = _Initial;
  const factory GetAllStoreState.loading() = _Loading;
  const factory GetAllStoreState.loaded(List<Store> data) = _Loaded;
  const factory GetAllStoreState.error(String message) = _Error;
}
