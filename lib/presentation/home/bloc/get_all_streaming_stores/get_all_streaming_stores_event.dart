part of 'get_all_streaming_stores_bloc.dart';

@freezed
class GetAllStreamingStoresEvent with _$GetAllStreamingStoresEvent {
  const factory GetAllStreamingStoresEvent.started() = _Started;
  const factory GetAllStreamingStoresEvent.getAllStreamingStores() =
      _GetAllStreamingStores;
}
