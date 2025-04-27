import 'response/products_response_model.dart';

class OrderItemModel {
  Products products;
  int quantity;
  OrderItemModel({
    required this.products,
    required this.quantity,
  });

  OrderItemModel copyWith({
    Products? products,
    int? quantity,
  }) {
    return OrderItemModel(
      products: products ?? this.products,
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  bool operator ==(covariant OrderItemModel other) {
    if (identical(this, other)) return true;

    return other.products == products && other.quantity == quantity;
  }

  @override
  int get hashCode => products.hashCode ^ quantity.hashCode;
}
