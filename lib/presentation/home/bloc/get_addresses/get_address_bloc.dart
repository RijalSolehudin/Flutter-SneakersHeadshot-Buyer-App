import 'package:bloc/bloc.dart';
import 'package:ecommerce_buyer_app/data/datasources/address_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/response/address_response_model.dart';

part 'get_address_event.dart';
part 'get_address_state.dart';
part 'get_address_bloc.freezed.dart';

class GetAddressBloc extends Bloc<GetAddressEvent, GetAddressState> {
  final AddressRemoteDatasource addressRemoteDatasource;
  GetAddressBloc(this.addressRemoteDatasource) : super(const _Initial()) {
    on<_GetAddress>((event, emit) async {
      emit(const _Loading());
      final result = await addressRemoteDatasource.getAddress();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data!)),
      );
    });
  }
}
