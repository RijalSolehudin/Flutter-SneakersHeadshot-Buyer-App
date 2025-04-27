// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Products product) addItem,
    required TResult Function(Products product) removeItem,
    required TResult Function(Products product) resetItem,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Products product)? addItem,
    TResult? Function(Products product)? removeItem,
    TResult? Function(Products product)? resetItem,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Products product)? addItem,
    TResult Function(Products product)? removeItem,
    TResult Function(Products product)? resetItem,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItem value) resetItem,
    required TResult Function(_AddAddress value) addAddressId,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItem value)? resetItem,
    TResult? Function(_AddAddress value)? addAddressId,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItem value)? resetItem,
    TResult Function(_AddAddress value)? addAddressId,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEventCopyWith<$Res> {
  factory $CheckoutEventCopyWith(
          CheckoutEvent value, $Res Function(CheckoutEvent) then) =
      _$CheckoutEventCopyWithImpl<$Res, CheckoutEvent>;
}

/// @nodoc
class _$CheckoutEventCopyWithImpl<$Res, $Val extends CheckoutEvent>
    implements $CheckoutEventCopyWith<$Res> {
  _$CheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CheckoutEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Products product) addItem,
    required TResult Function(Products product) removeItem,
    required TResult Function(Products product) resetItem,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Products product)? addItem,
    TResult? Function(Products product)? removeItem,
    TResult? Function(Products product)? resetItem,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Products product)? addItem,
    TResult Function(Products product)? removeItem,
    TResult Function(Products product)? resetItem,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItem value) resetItem,
    required TResult Function(_AddAddress value) addAddressId,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItem value)? resetItem,
    TResult? Function(_AddAddress value)? addAddressId,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItem value)? resetItem,
    TResult Function(_AddAddress value)? addAddressId,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CheckoutEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddItemImplCopyWith<$Res> {
  factory _$$AddItemImplCopyWith(
          _$AddItemImpl value, $Res Function(_$AddItemImpl) then) =
      __$$AddItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Products product});
}

/// @nodoc
class __$$AddItemImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddItemImpl>
    implements _$$AddItemImplCopyWith<$Res> {
  __$$AddItemImplCopyWithImpl(
      _$AddItemImpl _value, $Res Function(_$AddItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddItemImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Products,
    ));
  }
}

/// @nodoc

class _$AddItemImpl implements _AddItem {
  const _$AddItemImpl(this.product);

  @override
  final Products product;

  @override
  String toString() {
    return 'CheckoutEvent.addItem(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      __$$AddItemImplCopyWithImpl<_$AddItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Products product) addItem,
    required TResult Function(Products product) removeItem,
    required TResult Function(Products product) resetItem,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return addItem(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Products product)? addItem,
    TResult? Function(Products product)? removeItem,
    TResult? Function(Products product)? resetItem,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return addItem?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Products product)? addItem,
    TResult Function(Products product)? removeItem,
    TResult Function(Products product)? resetItem,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItem value) resetItem,
    required TResult Function(_AddAddress value) addAddressId,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItem value)? resetItem,
    TResult? Function(_AddAddress value)? addAddressId,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItem value)? resetItem,
    TResult Function(_AddAddress value)? addAddressId,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _AddItem implements CheckoutEvent {
  const factory _AddItem(final Products product) = _$AddItemImpl;

  Products get product;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveItemImplCopyWith<$Res> {
  factory _$$RemoveItemImplCopyWith(
          _$RemoveItemImpl value, $Res Function(_$RemoveItemImpl) then) =
      __$$RemoveItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Products product});
}

/// @nodoc
class __$$RemoveItemImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveItemImpl>
    implements _$$RemoveItemImplCopyWith<$Res> {
  __$$RemoveItemImplCopyWithImpl(
      _$RemoveItemImpl _value, $Res Function(_$RemoveItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemoveItemImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Products,
    ));
  }
}

/// @nodoc

class _$RemoveItemImpl implements _RemoveItem {
  const _$RemoveItemImpl(this.product);

  @override
  final Products product;

  @override
  String toString() {
    return 'CheckoutEvent.removeItem(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveItemImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      __$$RemoveItemImplCopyWithImpl<_$RemoveItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Products product) addItem,
    required TResult Function(Products product) removeItem,
    required TResult Function(Products product) resetItem,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return removeItem(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Products product)? addItem,
    TResult? Function(Products product)? removeItem,
    TResult? Function(Products product)? resetItem,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return removeItem?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Products product)? addItem,
    TResult Function(Products product)? removeItem,
    TResult Function(Products product)? resetItem,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItem value) resetItem,
    required TResult Function(_AddAddress value) addAddressId,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItem value)? resetItem,
    TResult? Function(_AddAddress value)? addAddressId,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItem value)? resetItem,
    TResult Function(_AddAddress value)? addAddressId,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class _RemoveItem implements CheckoutEvent {
  const factory _RemoveItem(final Products product) = _$RemoveItemImpl;

  Products get product;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetItemImplCopyWith<$Res> {
  factory _$$ResetItemImplCopyWith(
          _$ResetItemImpl value, $Res Function(_$ResetItemImpl) then) =
      __$$ResetItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Products product});
}

/// @nodoc
class __$$ResetItemImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$ResetItemImpl>
    implements _$$ResetItemImplCopyWith<$Res> {
  __$$ResetItemImplCopyWithImpl(
      _$ResetItemImpl _value, $Res Function(_$ResetItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ResetItemImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Products,
    ));
  }
}

/// @nodoc

class _$ResetItemImpl implements _ResetItem {
  const _$ResetItemImpl(this.product);

  @override
  final Products product;

  @override
  String toString() {
    return 'CheckoutEvent.resetItem(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetItemImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetItemImplCopyWith<_$ResetItemImpl> get copyWith =>
      __$$ResetItemImplCopyWithImpl<_$ResetItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Products product) addItem,
    required TResult Function(Products product) removeItem,
    required TResult Function(Products product) resetItem,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return resetItem(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Products product)? addItem,
    TResult? Function(Products product)? removeItem,
    TResult? Function(Products product)? resetItem,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return resetItem?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Products product)? addItem,
    TResult Function(Products product)? removeItem,
    TResult Function(Products product)? resetItem,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (resetItem != null) {
      return resetItem(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItem value) resetItem,
    required TResult Function(_AddAddress value) addAddressId,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return resetItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItem value)? resetItem,
    TResult? Function(_AddAddress value)? addAddressId,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return resetItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItem value)? resetItem,
    TResult Function(_AddAddress value)? addAddressId,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (resetItem != null) {
      return resetItem(this);
    }
    return orElse();
  }
}

abstract class _ResetItem implements CheckoutEvent {
  const factory _ResetItem(final Products product) = _$ResetItemImpl;

  Products get product;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetItemImplCopyWith<_$ResetItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAddressImplCopyWith<$Res> {
  factory _$$AddAddressImplCopyWith(
          _$AddAddressImpl value, $Res Function(_$AddAddressImpl) then) =
      __$$AddAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int addressId});
}

/// @nodoc
class __$$AddAddressImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddAddressImpl>
    implements _$$AddAddressImplCopyWith<$Res> {
  __$$AddAddressImplCopyWithImpl(
      _$AddAddressImpl _value, $Res Function(_$AddAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressId = null,
  }) {
    return _then(_$AddAddressImpl(
      null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddAddressImpl implements _AddAddress {
  const _$AddAddressImpl(this.addressId);

  @override
  final int addressId;

  @override
  String toString() {
    return 'CheckoutEvent.addAddressId(addressId: $addressId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressImpl &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressId);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressImplCopyWith<_$AddAddressImpl> get copyWith =>
      __$$AddAddressImplCopyWithImpl<_$AddAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Products product) addItem,
    required TResult Function(Products product) removeItem,
    required TResult Function(Products product) resetItem,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return addAddressId(addressId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Products product)? addItem,
    TResult? Function(Products product)? removeItem,
    TResult? Function(Products product)? resetItem,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return addAddressId?.call(addressId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Products product)? addItem,
    TResult Function(Products product)? removeItem,
    TResult Function(Products product)? resetItem,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addAddressId != null) {
      return addAddressId(addressId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItem value) resetItem,
    required TResult Function(_AddAddress value) addAddressId,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return addAddressId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItem value)? resetItem,
    TResult? Function(_AddAddress value)? addAddressId,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return addAddressId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItem value)? resetItem,
    TResult Function(_AddAddress value)? addAddressId,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addAddressId != null) {
      return addAddressId(this);
    }
    return orElse();
  }
}

abstract class _AddAddress implements CheckoutEvent {
  const factory _AddAddress(final int addressId) = _$AddAddressImpl;

  int get addressId;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAddressImplCopyWith<_$AddAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddShippingServiceImplCopyWith<$Res> {
  factory _$$AddShippingServiceImplCopyWith(_$AddShippingServiceImpl value,
          $Res Function(_$AddShippingServiceImpl) then) =
      __$$AddShippingServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String shippingService, int shippingCost});
}

/// @nodoc
class __$$AddShippingServiceImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddShippingServiceImpl>
    implements _$$AddShippingServiceImplCopyWith<$Res> {
  __$$AddShippingServiceImplCopyWithImpl(_$AddShippingServiceImpl _value,
      $Res Function(_$AddShippingServiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingService = null,
    Object? shippingCost = null,
  }) {
    return _then(_$AddShippingServiceImpl(
      null == shippingService
          ? _value.shippingService
          : shippingService // ignore: cast_nullable_to_non_nullable
              as String,
      null == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddShippingServiceImpl implements _AddShippingService {
  const _$AddShippingServiceImpl(this.shippingService, this.shippingCost);

  @override
  final String shippingService;
  @override
  final int shippingCost;

  @override
  String toString() {
    return 'CheckoutEvent.addShippingService(shippingService: $shippingService, shippingCost: $shippingCost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddShippingServiceImpl &&
            (identical(other.shippingService, shippingService) ||
                other.shippingService == shippingService) &&
            (identical(other.shippingCost, shippingCost) ||
                other.shippingCost == shippingCost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shippingService, shippingCost);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddShippingServiceImplCopyWith<_$AddShippingServiceImpl> get copyWith =>
      __$$AddShippingServiceImplCopyWithImpl<_$AddShippingServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Products product) addItem,
    required TResult Function(Products product) removeItem,
    required TResult Function(Products product) resetItem,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return addShippingService(shippingService, shippingCost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Products product)? addItem,
    TResult? Function(Products product)? removeItem,
    TResult? Function(Products product)? resetItem,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return addShippingService?.call(shippingService, shippingCost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Products product)? addItem,
    TResult Function(Products product)? removeItem,
    TResult Function(Products product)? resetItem,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addShippingService != null) {
      return addShippingService(shippingService, shippingCost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItem value) resetItem,
    required TResult Function(_AddAddress value) addAddressId,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return addShippingService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItem value)? resetItem,
    TResult? Function(_AddAddress value)? addAddressId,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return addShippingService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItem value)? resetItem,
    TResult Function(_AddAddress value)? addAddressId,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addShippingService != null) {
      return addShippingService(this);
    }
    return orElse();
  }
}

abstract class _AddShippingService implements CheckoutEvent {
  const factory _AddShippingService(
          final String shippingService, final int shippingCost) =
      _$AddShippingServiceImpl;

  String get shippingService;
  int get shippingCost;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddShippingServiceImplCopyWith<_$AddShippingServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPaymentVaNameImplCopyWith<$Res> {
  factory _$$AddPaymentVaNameImplCopyWith(_$AddPaymentVaNameImpl value,
          $Res Function(_$AddPaymentVaNameImpl) then) =
      __$$AddPaymentVaNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String paymentVaName});
}

/// @nodoc
class __$$AddPaymentVaNameImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddPaymentVaNameImpl>
    implements _$$AddPaymentVaNameImplCopyWith<$Res> {
  __$$AddPaymentVaNameImplCopyWithImpl(_$AddPaymentVaNameImpl _value,
      $Res Function(_$AddPaymentVaNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentVaName = null,
  }) {
    return _then(_$AddPaymentVaNameImpl(
      null == paymentVaName
          ? _value.paymentVaName
          : paymentVaName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddPaymentVaNameImpl implements _AddPaymentVaName {
  const _$AddPaymentVaNameImpl(this.paymentVaName);

  @override
  final String paymentVaName;

  @override
  String toString() {
    return 'CheckoutEvent.addPaymentVaName(paymentVaName: $paymentVaName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPaymentVaNameImpl &&
            (identical(other.paymentVaName, paymentVaName) ||
                other.paymentVaName == paymentVaName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentVaName);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPaymentVaNameImplCopyWith<_$AddPaymentVaNameImpl> get copyWith =>
      __$$AddPaymentVaNameImplCopyWithImpl<_$AddPaymentVaNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Products product) addItem,
    required TResult Function(Products product) removeItem,
    required TResult Function(Products product) resetItem,
    required TResult Function(int addressId) addAddressId,
    required TResult Function(String shippingService, int shippingCost)
        addShippingService,
    required TResult Function(String paymentVaName) addPaymentVaName,
  }) {
    return addPaymentVaName(paymentVaName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Products product)? addItem,
    TResult? Function(Products product)? removeItem,
    TResult? Function(Products product)? resetItem,
    TResult? Function(int addressId)? addAddressId,
    TResult? Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult? Function(String paymentVaName)? addPaymentVaName,
  }) {
    return addPaymentVaName?.call(paymentVaName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Products product)? addItem,
    TResult Function(Products product)? removeItem,
    TResult Function(Products product)? resetItem,
    TResult Function(int addressId)? addAddressId,
    TResult Function(String shippingService, int shippingCost)?
        addShippingService,
    TResult Function(String paymentVaName)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addPaymentVaName != null) {
      return addPaymentVaName(paymentVaName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ResetItem value) resetItem,
    required TResult Function(_AddAddress value) addAddressId,
    required TResult Function(_AddShippingService value) addShippingService,
    required TResult Function(_AddPaymentVaName value) addPaymentVaName,
  }) {
    return addPaymentVaName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_ResetItem value)? resetItem,
    TResult? Function(_AddAddress value)? addAddressId,
    TResult? Function(_AddShippingService value)? addShippingService,
    TResult? Function(_AddPaymentVaName value)? addPaymentVaName,
  }) {
    return addPaymentVaName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ResetItem value)? resetItem,
    TResult Function(_AddAddress value)? addAddressId,
    TResult Function(_AddShippingService value)? addShippingService,
    TResult Function(_AddPaymentVaName value)? addPaymentVaName,
    required TResult orElse(),
  }) {
    if (addPaymentVaName != null) {
      return addPaymentVaName(this);
    }
    return orElse();
  }
}

abstract class _AddPaymentVaName implements CheckoutEvent {
  const factory _AddPaymentVaName(final String paymentVaName) =
      _$AddPaymentVaNameImpl;

  String get paymentVaName;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPaymentVaNameImplCopyWith<_$AddPaymentVaNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CheckoutState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckoutState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CheckoutState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CheckoutState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<OrderItemModel> products,
      int totalQuantity,
      int totalPrice,
      int addressId,
      String shippingService,
      int shippingCost,
      String paymentVaName,
      String paymentMethod});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? totalQuantity = null,
    Object? totalPrice = null,
    Object? addressId = null,
    Object? shippingService = null,
    Object? shippingCost = null,
    Object? paymentVaName = null,
    Object? paymentMethod = null,
  }) {
    return _then(_$LoadedImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
      null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      null == shippingService
          ? _value.shippingService
          : shippingService // ignore: cast_nullable_to_non_nullable
              as String,
      null == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as int,
      null == paymentVaName
          ? _value.paymentVaName
          : paymentVaName // ignore: cast_nullable_to_non_nullable
              as String,
      null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      final List<OrderItemModel> products,
      this.totalQuantity,
      this.totalPrice,
      this.addressId,
      this.shippingService,
      this.shippingCost,
      this.paymentVaName,
      this.paymentMethod)
      : _products = products;

  final List<OrderItemModel> _products;
  @override
  List<OrderItemModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int totalQuantity;
  @override
  final int totalPrice;
  @override
  final int addressId;
  @override
  final String shippingService;
  @override
  final int shippingCost;
  @override
  final String paymentVaName;
  @override
  final String paymentMethod;

  @override
  String toString() {
    return 'CheckoutState.loaded(products: $products, totalQuantity: $totalQuantity, totalPrice: $totalPrice, addressId: $addressId, shippingService: $shippingService, shippingCost: $shippingCost, paymentVaName: $paymentVaName, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.shippingService, shippingService) ||
                other.shippingService == shippingService) &&
            (identical(other.shippingCost, shippingCost) ||
                other.shippingCost == shippingCost) &&
            (identical(other.paymentVaName, paymentVaName) ||
                other.paymentVaName == paymentVaName) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      totalQuantity,
      totalPrice,
      addressId,
      shippingService,
      shippingCost,
      paymentVaName,
      paymentMethod);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(products, totalQuantity, totalPrice, addressId,
        shippingService, shippingCost, paymentVaName, paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(products, totalQuantity, totalPrice, addressId,
        shippingService, shippingCost, paymentVaName, paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products, totalQuantity, totalPrice, addressId,
          shippingService, shippingCost, paymentVaName, paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CheckoutState {
  const factory _Loaded(
      final List<OrderItemModel> products,
      final int totalQuantity,
      final int totalPrice,
      final int addressId,
      final String shippingService,
      final int shippingCost,
      final String paymentVaName,
      final String paymentMethod) = _$LoadedImpl;

  List<OrderItemModel> get products;
  int get totalQuantity;
  int get totalPrice;
  int get addressId;
  String get shippingService;
  int get shippingCost;
  String get paymentVaName;
  String get paymentMethod;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CheckoutState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItemModel> products,
            int totalQuantity,
            int totalPrice,
            int addressId,
            String shippingService,
            int shippingCost,
            String paymentVaName,
            String paymentMethod)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CheckoutState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
