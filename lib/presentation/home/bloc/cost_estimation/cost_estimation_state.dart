part of 'cost_estimation_bloc.dart';

@freezed
class CostEstimationState with _$CostEstimationState {
  const factory CostEstimationState.initial() = _Initial;
  const factory CostEstimationState.loading() = _Loading;
  const factory CostEstimationState.loaded(CostEstimationResponseModel data) =
      _Loaded;
  const factory CostEstimationState.error(String message) = _Error;
}
