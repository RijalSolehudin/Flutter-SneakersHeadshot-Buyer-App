part of 'get_all_streaming_stores_bloc.dart';

@freezed
class GetAllStreamingStoresState with _$GetAllStreamingStoresState {
  const factory GetAllStreamingStoresState.initial() = _Initial;
  const factory GetAllStreamingStoresState.loading() = _Loading;
  const factory GetAllStreamingStoresState.loaded(List<Store> data) = _Loaded;
  const factory GetAllStreamingStoresState.error(String message) = _Error;
}
