part of 'get_address_bloc.dart';

@freezed
class GetAddressState with _$GetAddressState {
  const factory GetAddressState.initial() = _Initial;
  const factory GetAddressState.loading() = _Loading;
  const factory GetAddressState.loaded(List<Address> data) = _Loaded;
  const factory GetAddressState.error(String message) = _Error;
}
