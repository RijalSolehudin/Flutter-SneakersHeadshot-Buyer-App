import 'package:bloc/bloc.dart';
import 'package:ecommerce_buyer_app/data/datasources/rajaongkir_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/response/waybill_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'waybill_event.dart';
part 'waybill_state.dart';
part 'waybill_bloc.freezed.dart';

class WaybillBloc extends Bloc<WaybillEvent, WaybillState> {
  RajaongkirRemoteDatasource rajaongkirRemoteDatasource;
  WaybillBloc(this.rajaongkirRemoteDatasource) : super(const _Initial()) {
    on<_Waybill>((event, emit) async {
      emit(const _Loading());
      final result =
          await rajaongkirRemoteDatasource.waybill(event.noResi, event.courier);

      result.fold((l) => emit(_Error(l)),
          (r) => emit(_Loaded(r.rajaongkir!.result!.manifest!)));
    });
  }
}
