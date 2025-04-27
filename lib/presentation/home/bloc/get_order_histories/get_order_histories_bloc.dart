import 'package:bloc/bloc.dart';
import 'package:ecommerce_buyer_app/data/datasources/order_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/response/get_order_histories_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_order_histories_event.dart';
part 'get_order_histories_state.dart';
part 'get_order_histories_bloc.freezed.dart';

class GetOrderHistoriesBloc
    extends Bloc<GetOrderHistoriesEvent, GetOrderHistoriesState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  GetOrderHistoriesBloc(this.orderRemoteDatasource) : super(_Initial()) {
    on<_GetOrderHistories>((event, emit) async {
      emit(const _Loading());
      final result = await orderRemoteDatasource.getOrderHistories();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data!)),
      );
    });
  }
}
