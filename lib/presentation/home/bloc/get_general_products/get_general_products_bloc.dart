import 'package:bloc/bloc.dart';
import 'package:ecommerce_buyer_app/data/datasources/product_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/response/all_products_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_general_products_event.dart';
part 'get_general_products_state.dart';
part 'get_general_products_bloc.freezed.dart';

class GetGeneralProductsBloc
    extends Bloc<GetGeneralProductsEvent, GetGeneralProductsState> {
  ProductRemoteDatasource productRemoteDatasource;
  GetGeneralProductsBloc(this.productRemoteDatasource)
      : super(const _Initial()) {
    on<_GetGeneralProducts>((event, emit) async {
      emit(const _Loading());
      final result = await productRemoteDatasource.getGeneralProducts();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data!)),
      );
    });
  }
}
