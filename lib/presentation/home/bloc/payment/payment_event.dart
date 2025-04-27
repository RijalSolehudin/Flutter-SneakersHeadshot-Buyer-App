part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.started() = _Started;
  const factory PaymentEvent.getVaNumber(PaymentRequestModel data) =
      _getVaNumber;
}
