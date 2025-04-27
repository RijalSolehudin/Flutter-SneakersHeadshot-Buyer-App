part of 'waybill_bloc.dart';

@freezed
class WaybillEvent with _$WaybillEvent {
  const factory WaybillEvent.started() = _Started;
  const factory WaybillEvent.waybill(String noResi, String courier) = _Waybill;
}
