part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.started() = _Started;
  const factory CheckoutEvent.addItem(Products product) = _AddItem;
  const factory CheckoutEvent.removeItem(Products product) = _RemoveItem;
  const factory CheckoutEvent.resetItem(Products product) = _ResetItem;
  const factory CheckoutEvent.addAddressId(int addressId) = _AddAddress;
  const factory CheckoutEvent.addShippingService(
      String shippingService, int shippingCost) = _AddShippingService;
  const factory CheckoutEvent.addPaymentVaName(String paymentVaName) =
      _AddPaymentVaName;
}
