part of 'payment_status_bloc.dart';

@freezed
class PaymentStatusEvent with _$PaymentStatusEvent {
  const factory PaymentStatusEvent.started() = _Started;
  const factory PaymentStatusEvent.getPaymentStatus(int orderId) =
      _GetPaymentStatus;
}
