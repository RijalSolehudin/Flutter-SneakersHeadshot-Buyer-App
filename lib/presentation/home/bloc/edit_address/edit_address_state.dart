part of 'edit_address_bloc.dart';

@freezed
class EditAddressState with _$EditAddressState {
  const factory EditAddressState.initial() = _Initial;
  const factory EditAddressState.loading() = _Loading;
  const factory EditAddressState.success() = _Success;
  const factory EditAddressState.error(String message) = _Error;
}
