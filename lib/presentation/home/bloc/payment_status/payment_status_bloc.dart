import 'package:bloc/bloc.dart';
import 'package:ecommerce_buyer_app/data/datasources/order_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_status_event.dart';
part 'payment_status_state.dart';
part 'payment_status_bloc.freezed.dart';

class PaymentStatusBloc extends Bloc<PaymentStatusEvent, PaymentStatusState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  PaymentStatusBloc(this.orderRemoteDatasource) : super(const _Initial()) {
    on<_GetPaymentStatus>((event, emit) async {
      emit(const _Loading());
      final result = await orderRemoteDatasource.getPayment(event.orderId);
      result.fold(
        (l) => emit(_Error(l)),
        (r) {
          if (r == 'paid') {
            emit(_Success(r));
          } else {
            emit(const _WaitingPayment());
          }
        },
      );
    });
  }
}
