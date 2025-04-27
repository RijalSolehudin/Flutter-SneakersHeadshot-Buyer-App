import 'package:bloc/bloc.dart';
import 'package:ecommerce_buyer_app/data/datasources/address_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/request/address_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_address_event.dart';
part 'edit_address_state.dart';
part 'edit_address_bloc.freezed.dart';

class EditAddressBloc extends Bloc<EditAddressEvent, EditAddressState> {
  final AddressRemoteDatasource addressRemoteDatasource;
  EditAddressBloc(this.addressRemoteDatasource) : super(const _Initial()) {
    on<_EditAddress>((event, emit) async {
      emit(const _Loading());
      final result =
          await addressRemoteDatasource.updateAddress(event.data, event.id);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(const _Success()),
      );
    });
  }
}
