import 'package:bloc/bloc.dart';
import 'package:ecommerce_buyer_app/data/datasources/product_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/response/products_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_product_event.dart';
part 'get_all_product_state.dart';
part 'get_all_product_bloc.freezed.dart';

class GetAllProductBloc extends Bloc<GetAllProductEvent, GetAllProductState> {
  final ProductRemoteDatasource productRemoteDatasource;
  GetAllProductBloc(this.productRemoteDatasource) : super(_Initial()) {
    on<_getAllProduct>((event, emit) async {
      emit(const _Loading());
      final result =
          await productRemoteDatasource.getAllProducts(event.sellerId);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data!)),
      );
    });
  }
}
