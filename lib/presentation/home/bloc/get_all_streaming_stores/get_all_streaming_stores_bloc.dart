import 'package:bloc/bloc.dart';
import 'package:ecommerce_buyer_app/data/datasources/store_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/model/response/store_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_streaming_stores_event.dart';
part 'get_all_streaming_stores_state.dart';
part 'get_all_streaming_stores_bloc.freezed.dart';

class GetAllStreamingStoresBloc
    extends Bloc<GetAllStreamingStoresEvent, GetAllStreamingStoresState> {
  final StoreRemoteDatasources storeRemoteDatasources;
  GetAllStreamingStoresBloc(this.storeRemoteDatasources)
      : super(const _Initial()) {
    on<_GetAllStreamingStores>((event, emit) async {
      emit(const _Loading());
      final result = await storeRemoteDatasources.getAllStreamingStores();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data!)),
      );
    });
  }
}
