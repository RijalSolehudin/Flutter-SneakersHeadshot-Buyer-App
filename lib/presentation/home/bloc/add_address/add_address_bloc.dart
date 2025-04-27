import 'package:bloc/bloc.dart';
import 'package:ecommerce_buyer_app/data/datasources/address_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/request/address_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_address_event.dart';
part 'add_address_state.dart';
part 'add_address_bloc.freezed.dart';

class AddAddressBloc extends Bloc<AddAddressEvent, AddAddressState> {
  final AddressRemoteDatasource addressRemoteDatasource;
  AddAddressBloc(this.addressRemoteDatasource) : super(const _Initial()) {
    on<_AddAddress>((event, emit) async {
      emit(const _Loading());
      final result = await addressRemoteDatasource.addAddress(event.data);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(const _Success()),
      );
    });
  }
}
