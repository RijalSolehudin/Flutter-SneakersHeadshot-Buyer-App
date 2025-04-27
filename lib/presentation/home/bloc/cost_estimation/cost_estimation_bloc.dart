import 'package:bloc/bloc.dart';
import 'package:ecommerce_buyer_app/data/datasources/rajaongkir_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/response/cost_estimation_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cost_estimation_event.dart';
part 'cost_estimation_state.dart';
part 'cost_estimation_bloc.freezed.dart';

class CostEstimationBloc
    extends Bloc<CostEstimationEvent, CostEstimationState> {
  final RajaongkirRemoteDatasource rajaongkirRemoteDatasource;
  CostEstimationBloc(this.rajaongkirRemoteDatasource)
      : super(const _Initial()) {
    on<_GetCostEstimation>((event, emit) async {
      emit(const _Loading());
      final result = await rajaongkirRemoteDatasource.costEstimation(
          event.origin, event.destination, event.weight, event.courier);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
