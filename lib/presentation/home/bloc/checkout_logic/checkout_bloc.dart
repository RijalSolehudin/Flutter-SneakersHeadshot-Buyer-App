import 'package:bloc/bloc.dart';
import 'package:ecommerce_buyer_app/data/model/order_item_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/products_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc()
      : super(const _Loaded([], 0, 0, 0, '', 0, '', 'bank_transfer')) {
    on<_AddItem>((event, emit) {
      var currentState = state as _Loaded;
      List<OrderItemModel> newProducts = [...currentState.products];
      emit(const _Loading());

      if (newProducts.any(
        (element) => element.products == event.product,
      )) {
        var index = newProducts.indexWhere(
          (element) => element.products == event.product,
        );
        newProducts[index].quantity++;
      } else {
        newProducts.add(OrderItemModel(products: event.product, quantity: 1));
      }

      int totalQuantity = 0;
      int totalPrice = 0;

      for (var element in newProducts) {
        totalQuantity += element.quantity;
        totalPrice +=
            (element.quantity * double.parse(element.products.price!)).toInt();
      }
      emit(_Loaded(
          newProducts,
          totalQuantity,
          totalPrice,
          currentState.addressId,
          currentState.shippingService,
          currentState.shippingCost,
          currentState.paymentVaName,
          currentState.paymentMethod));
    });

    on<_RemoveItem>((event, emit) {
      var currentState = state as _Loaded;
      List<OrderItemModel> newProducts = [...currentState.products];
      emit(const _Loading());
      if (newProducts.any(
        (element) => element.products == event.product,
      )) {
        var index = newProducts.indexWhere(
          (element) => element.products == event.product,
        );
        if (newProducts[index].quantity == 1) {
          newProducts.removeAt(index);
        } else {
          newProducts[index].quantity--;
        }
      }

      int totalQuantity = 0;
      int totalPrice = 0;
      for (var element in newProducts) {
        totalQuantity += element.quantity;
        totalPrice +=
            (element.quantity * double.parse(element.products.price!)).toInt();
      }

      emit(_Loaded(
          newProducts,
          totalQuantity,
          totalPrice,
          currentState.addressId,
          currentState.shippingService,
          currentState.shippingCost,
          currentState.paymentVaName,
          currentState.paymentMethod));
    });

    on<_ResetItem>((event, emit) {
      var currentState = state as _Loaded;
      List<OrderItemModel> newProducts = [...currentState.products];
      emit(const _Loading());

      newProducts.removeWhere(
        (element) => element.products == event.product,
      );
      int totalQuantity = 0;
      int totalPrice = 0;
      for (var element in newProducts) {
        totalQuantity += element.quantity;
        totalPrice +=
            (element.quantity * double.parse(element.products.price!)).toInt();
      }
      emit(_Loaded(
          newProducts,
          totalQuantity,
          totalPrice,
          currentState.addressId,
          currentState.shippingService,
          currentState.shippingCost,
          currentState.paymentVaName,
          currentState.paymentMethod));
    });

    on<_AddAddress>((event, emit) {
      var currentState = state as _Loaded;
      emit(const _Loading());
      emit(_Loaded(
          currentState.products,
          currentState.totalQuantity,
          currentState.totalPrice,
          event.addressId,
          currentState.shippingService,
          currentState.shippingCost,
          currentState.paymentVaName,
          currentState.paymentMethod));
    });

    on<_AddShippingService>((event, emit) {
      var currentState = state as _Loaded;
      emit(const _Loading());
      emit(_Loaded(
          currentState.products,
          currentState.totalQuantity,
          currentState.totalPrice,
          currentState.addressId,
          event.shippingService,
          event.shippingCost,
          currentState.paymentVaName,
          currentState.paymentMethod));
    });

    on<_AddPaymentVaName>((event, emit) {
      var currentState = state as _Loaded;
      emit(const _Loading());
      emit(_Loaded(
          currentState.products,
          currentState.totalQuantity,
          currentState.totalPrice,
          currentState.addressId,
          currentState.shippingService,
          currentState.shippingCost,
          event.paymentVaName,
          currentState.paymentMethod));
    });

    on<_Started>((event, emit) {
      emit(const _Loading());
      emit(const _Loaded([], 0, 0, 0, '', 0, '', 'bank_transfer'));
    });
  }
}
