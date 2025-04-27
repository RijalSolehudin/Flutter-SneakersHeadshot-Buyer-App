part of 'cost_estimation_bloc.dart';

@freezed
class CostEstimationEvent with _$CostEstimationEvent {
  const factory CostEstimationEvent.started() = _Started;
  const factory CostEstimationEvent.getCostEstimation(
          String origin, String destination, String weight, String courier) =
      _GetCostEstimation;
}
