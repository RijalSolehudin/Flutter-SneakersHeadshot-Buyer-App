part of 'waybill_bloc.dart';

@freezed
class WaybillState with _$WaybillState {
  const factory WaybillState.initial() = _Initial;
  const factory WaybillState.loading() = _Loading;
  const factory WaybillState.loaded(List<Manifest> data) = _Loaded;
  const factory WaybillState.error(String message) = _Error;
}
