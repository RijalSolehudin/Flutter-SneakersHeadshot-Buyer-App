import 'package:bloc/bloc.dart';
import 'package:ecommerce_buyer_app/data/datasources/store_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/response/store_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_store_event.dart';
part 'get_all_store_state.dart';
part 'get_all_store_bloc.freezed.dart';

class GetAllStoreBloc extends Bloc<GetAllStoreEvent, GetAllStoreState> {
  final StoreRemoteDatasources storeRemoteDatasources;
  GetAllStoreBloc(this.storeRemoteDatasources) : super(const _Initial()) {
    on<_getAllStore>((event, emit) async {
      emit(const _Loading());
      final result = await storeRemoteDatasources.getAllStore();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data!)),
      );
    });
  }
}
