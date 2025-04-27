part of 'payment_status_bloc.dart';

@freezed
class PaymentStatusState with _$PaymentStatusState {
  const factory PaymentStatusState.initial() = _Initial;
  const factory PaymentStatusState.loading() = _Loading;
  const factory PaymentStatusState.success(String status) = _Success;
  const factory PaymentStatusState.error(String error) = _Error;
  const factory PaymentStatusState.waitingPaymment() = _WaitingPayment;
}
