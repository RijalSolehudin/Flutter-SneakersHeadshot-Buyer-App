import 'package:bloc/bloc.dart';
import 'package:ecommerce_buyer_app/data/datasources/order_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/request/payment_request_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/payment_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  PaymentBloc(this.orderRemoteDatasource) : super(const _Initial()) {
    on<_getVaNumber>((event, emit) async {
      emit(const _Loading());
      final result = await orderRemoteDatasource.getPaymentVaNumber(event.data);

      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
